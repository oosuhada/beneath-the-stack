#!/usr/bin/env python3
"""Run the v0.6 durable-job-runtime campaign and summarize deterministic failures."""

from __future__ import annotations

import argparse
import json
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BIN = ROOT / "build" / "bin" / "durable_job_runtime_lab"


def command_output(command: list[str]) -> str:
    try:
        return subprocess.check_output(command, cwd=ROOT, text=True, stderr=subprocess.STDOUT).strip()
    except (OSError, subprocess.CalledProcessError):
        return "unavailable"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--clients", type=int, default=10)
    parser.add_argument("--max-clients", type=int, default=100)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    if not BIN.exists():
        raise SystemExit("build/bin/durable_job_runtime_lab does not exist; run `make all` first")

    raw = subprocess.check_output(
        [str(BIN), "--clients", str(args.clients), "--max-clients", str(args.max_clients), "--warmup", "0", "--repetitions", "1"],
        cwd=ROOT,
        text=True,
    )
    lab = json.loads(raw.splitlines()[-1])
    failures = lab["failure_campaign"]
    perf = {item["clients"]: item for item in lab["performance_campaign"]}
    selected_perf = perf.get(args.clients) or lab["performance_campaign"][0]
    max_perf = perf.get(args.max_clients) or lab["performance_campaign"][-1]
    payload = {
        "schema_version": 1,
        "source_commit": command_output(["git", "rev-parse", "HEAD"]),
        "lab": "durable-job-runtime",
        "command": f"build/bin/durable_job_runtime_lab --clients {args.clients} --max-clients {args.max_clients} --warmup 0 --repetitions 1",
        "scenarios": [
            {
                "name": "normal",
                "passed": selected_perf["accepted"] == args.clients and selected_perf["frames"] == args.clients,
                "evidence": selected_perf,
            },
            {
                "name": "partial-packet",
                "passed": selected_perf["partial_reads"] > 0,
                "evidence": {"partial_reads": selected_perf["partial_reads"]},
            },
            {
                "name": "network-drop",
                "passed": failures["network_drop_reset"],
                "evidence": {"network_drop_reset": failures["network_drop_reset"]},
            },
            {
                "name": "duplicate",
                "passed": failures["duplicate_idempotent"],
                "evidence": {"duplicate_idempotent": failures["duplicate_idempotent"]},
            },
            {
                "name": "worker-crash",
                "passed": failures["running_recovered"],
                "evidence": {"running_recovered": failures["running_recovered"]},
            },
            {
                "name": "storage-corruption",
                "passed": failures["corrupt_tail_ignored"] and failures["truncated_tail_ignored"],
                "evidence": {
                    "corrupt_tail_ignored": failures["corrupt_tail_ignored"],
                    "truncated_tail_ignored": failures["truncated_tail_ignored"],
                    "invalid_records_seen": failures["invalid_records_seen"],
                },
            },
            {
                "name": "queue-full",
                "passed": failures["queue_full_rejected"],
                "evidence": {"queue_full_rejected": failures["queue_full_rejected"]},
            },
            {
                "name": "slow-consumer-pressure",
                "passed": max_perf["accepted"] == args.max_clients,
                "evidence": max_perf,
            },
        ],
    }
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
