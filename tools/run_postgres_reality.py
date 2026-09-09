#!/usr/bin/env python3
"""Run a bounded PostgreSQL reality check against a local disposable database."""

from __future__ import annotations

import json
import os
import shutil
import subprocess
import sys
import tempfile
import time
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "evidence" / "v0.7-postgres-reality.json"
PG_REF = ROOT.parent / "_systems-reference" / "postgres"


def run(args: list[str], *, check: bool = True, text: str | None = None) -> subprocess.CompletedProcess[str]:
    return subprocess.run(args, input=text, text=True, capture_output=True, check=check)


def psql(db: str, sql: str, *, check: bool = True) -> subprocess.CompletedProcess[str]:
    return run(["psql", "-X", "-q", "-v", "ON_ERROR_STOP=1", "-d", db, "-c", sql], check=check)


def scalar(db: str, sql: str) -> str:
    result = run(["psql", "-X", "-q", "-t", "-A", "-d", db, "-c", sql])
    return result.stdout.strip()


def explain(db: str, sql: str) -> dict:
    result = run(
        [
            "psql",
            "-X",
            "-q",
            "-t",
            "-A",
            "-d",
            db,
            "-c",
            f"EXPLAIN (ANALYZE, BUFFERS, FORMAT JSON) {sql}",
        ]
    )
    return json.loads(result.stdout.strip())[0]


def node_types(plan: dict) -> list[str]:
    seen: list[str] = []

    def walk(node: dict) -> None:
        kind = node.get("Node Type")
        if kind:
            seen.append(kind)
        for child in node.get("Plans", []):
            walk(child)

    walk(plan["Plan"])
    return seen


def buffer_summary(plan: dict) -> dict[str, int]:
    totals = {"hit": 0, "read": 0, "dirtied": 0, "written": 0}

    def walk(node: dict) -> None:
        totals["hit"] += int(node.get("Shared Hit Blocks", 0))
        totals["read"] += int(node.get("Shared Read Blocks", 0))
        totals["dirtied"] += int(node.get("Shared Dirtied Blocks", 0))
        totals["written"] += int(node.get("Shared Written Blocks", 0))
        for child in node.get("Plans", []):
            walk(child)

    walk(plan["Plan"])
    return totals


def run_mvcc_visibility(db: str) -> dict:
    psql(db, "UPDATE reality_jobs SET status = 'pending' WHERE id = 1")
    hold = subprocess.Popen(
        [
            "psql",
            "-X",
            "-q",
            "-v",
            "ON_ERROR_STOP=1",
            "-d",
            db,
            "-c",
            "BEGIN; UPDATE reality_jobs SET status = 'running' WHERE id = 1; "
            "SELECT pg_sleep(1.0); COMMIT;",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    time.sleep(0.2)
    before_commit = scalar(db, "SELECT status FROM reality_jobs WHERE id = 1")
    stdout, stderr = hold.communicate(timeout=5)
    after_commit = scalar(db, "SELECT status FROM reality_jobs WHERE id = 1")
    return {
        "reader_before_commit": before_commit,
        "reader_after_commit": after_commit,
        "writer_exit": hold.returncode,
        "writer_stderr": stderr.strip(),
        "writer_stdout_lines": len(stdout.splitlines()),
        "visible_only_after_commit": before_commit == "pending" and after_commit == "running",
    }


def run_lock_wait(db: str) -> dict:
    psql(db, "UPDATE reality_jobs SET status = 'pending' WHERE id = 2")
    holder = subprocess.Popen(
        [
            "psql",
            "-X",
            "-q",
            "-v",
            "ON_ERROR_STOP=1",
            "-d",
            db,
            "-c",
            "BEGIN; UPDATE reality_jobs SET status = 'locked' WHERE id = 2; "
            "SELECT pg_sleep(1.0); COMMIT;",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    time.sleep(0.2)
    waiter = psql(
        db,
        "SET lock_timeout = '250ms'; UPDATE reality_jobs SET status = 'waiter' WHERE id = 2;",
        check=False,
    )
    holder.communicate(timeout=5)
    return {
        "waiter_exit": waiter.returncode,
        "waiter_stderr": waiter.stderr.strip(),
        "lock_timeout_observed": waiter.returncode != 0 and "lock timeout" in waiter.stderr.lower(),
    }


def run_deadlock(db: str) -> dict:
    psql(db, "UPDATE reality_jobs SET status = 'pending' WHERE id IN (3, 4)")
    left = subprocess.Popen(
        [
            "psql",
            "-X",
            "-q",
            "-v",
            "ON_ERROR_STOP=1",
            "-d",
            db,
            "-c",
            "SET statement_timeout = '7000ms'; BEGIN; "
            "UPDATE reality_jobs SET status = 'left-first' WHERE id = 3; SELECT pg_sleep(0.5); "
            "UPDATE reality_jobs SET status = 'left-second' WHERE id = 4; COMMIT;",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    right = subprocess.Popen(
        [
            "psql",
            "-X",
            "-q",
            "-v",
            "ON_ERROR_STOP=1",
            "-d",
            db,
            "-c",
            "SET statement_timeout = '7000ms'; BEGIN; "
            "UPDATE reality_jobs SET status = 'right-first' WHERE id = 4; SELECT pg_sleep(0.5); "
            "UPDATE reality_jobs SET status = 'right-second' WHERE id = 3; COMMIT;",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
    )
    left_out, left_err = left.communicate(timeout=10)
    right_out, right_err = right.communicate(timeout=10)
    combined = f"{left_err}\n{right_err}".lower()
    return {
        "left_exit": left.returncode,
        "right_exit": right.returncode,
        "deadlock_detected": "deadlock detected" in combined,
        "one_transaction_aborted": (left.returncode != 0) ^ (right.returncode != 0),
        "stderr_excerpt": "\n".join((left_err + right_err).strip().splitlines()[:8]),
        "stdout_lines": len(left_out.splitlines()) + len(right_out.splitlines()),
    }


def main() -> int:
    if not all(shutil.which(cmd) for cmd in ["psql", "createdb", "dropdb"]):
        OUT.parent.mkdir(parents=True, exist_ok=True)
        OUT.write_text(json.dumps({"available": False, "reason": "psql/createdb/dropdb missing"}, indent=2) + "\n")
        return 0

    db = f"bts_reality_{os.getpid()}_{int(time.time())}"
    created = False
    try:
        run(["createdb", db])
        created = True
        psql(
            db,
            """
            CREATE TABLE reality_jobs (
              id integer PRIMARY KEY,
              account_id integer NOT NULL,
              status text NOT NULL,
              priority integer NOT NULL,
              payload text NOT NULL,
              updated_at timestamptz NOT NULL DEFAULT now()
            );
            INSERT INTO reality_jobs(id, account_id, status, priority, payload)
            SELECT g,
                   g % 100,
                   CASE WHEN g % 20 = 0 THEN 'ready'
                        WHEN g % 3 = 0 THEN 'failed'
                        ELSE 'done' END,
                   1000 - (g % 1000),
                   md5(g::text)
            FROM generate_series(1, 20000) AS g;
            ANALYZE reality_jobs;
            """,
        )
        version = scalar(db, "SELECT version()")
        seq_plan = explain(db, "SELECT count(*) FROM reality_jobs WHERE status = 'done'")
        psql(db, "CREATE INDEX idx_reality_jobs_account_status_priority ON reality_jobs(account_id, status, priority DESC); ANALYZE reality_jobs;")
        index_plan = explain(
            db,
            "SELECT id, priority FROM reality_jobs WHERE account_id = 40 AND status = 'ready' ORDER BY priority DESC LIMIT 5",
        )
        selective_plan = explain(
            db,
            "SELECT id FROM reality_jobs WHERE account_id = 40 AND status = 'ready' AND priority > 500",
        )
        before_lsn = scalar(db, "SELECT pg_current_wal_lsn()")
        psql(db, "UPDATE reality_jobs SET status = 'ready', updated_at = now() WHERE id BETWEEN 100 AND 199")
        after_lsn = scalar(db, "SELECT pg_current_wal_lsn()")
        wal_bytes = scalar(db, f"SELECT pg_wal_lsn_diff('{after_lsn}', '{before_lsn}')::bigint")
        mvcc = run_mvcc_visibility(db)
        lock_wait = run_lock_wait(db)
        deadlock = run_deadlock(db)
        source_commit = None
        if PG_REF.exists():
            source_commit = run(["git", "-C", str(PG_REF), "rev-parse", "HEAD"]).stdout.strip()
        payload = {
            "available": True,
            "source_commit": run(["git", "-C", str(ROOT), "rev-parse", "HEAD"]).stdout.strip(),
            "postgres_version": version,
            "postgres_source_commit": source_commit,
            "database": db,
            "plans": {
                "high_selectivity_seq_candidate": {
                    "node_types": node_types(seq_plan),
                    "buffers": buffer_summary(seq_plan),
                    "execution_time_ms": seq_plan.get("Execution Time"),
                },
                "composite_index_ordered_lookup": {
                    "node_types": node_types(index_plan),
                    "buffers": buffer_summary(index_plan),
                    "execution_time_ms": index_plan.get("Execution Time"),
                    "index_name": index_plan["Plan"].get("Index Name"),
                },
                "selective_index_lookup": {
                    "node_types": node_types(selective_plan),
                    "buffers": buffer_summary(selective_plan),
                    "execution_time_ms": selective_plan.get("Execution Time"),
                },
            },
            "mvcc_visibility": mvcc,
            "lock_wait": lock_wait,
            "deadlock": deadlock,
            "wal": {"before_lsn": before_lsn, "after_lsn": after_lsn, "bytes_advanced": int(wal_bytes)},
            "claims": {
                "real_postgres_explain_analyze_buffers": True,
                "real_mvcc_visibility_observed": mvcc["visible_only_after_commit"],
                "real_lock_wait_observed": lock_wait["lock_timeout_observed"],
                "real_deadlock_detected": deadlock["deadlock_detected"],
                "wal_lsn_advanced_after_update": int(wal_bytes) > 0,
            },
        }
        OUT.parent.mkdir(parents=True, exist_ok=True)
        OUT.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
        print(json.dumps(payload, indent=2, sort_keys=True))
        return 0
    finally:
        if created:
            run(["dropdb", "--if-exists", db], check=False)


if __name__ == "__main__":
    sys.exit(main())
