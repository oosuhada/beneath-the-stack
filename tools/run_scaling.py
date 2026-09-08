#!/usr/bin/env python3
"""Run a storage scaling study and preserve the theory/measurement distinction."""

from __future__ import annotations

import argparse
import csv
import datetime as dt
import json
import os
import platform
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
STORAGE = ROOT / "build" / "bin" / "storage_lab"


def command_output(command: list[str]) -> str:
    try:
        return subprocess.check_output(command, cwd=ROOT, text=True, stderr=subprocess.STDOUT).strip()
    except (OSError, subprocess.CalledProcessError):
        return "unavailable"


def run_storage(rows: int, queries: int, warmup: int, repetitions: int) -> dict:
    process = subprocess.run(
        [
            str(STORAGE),
            "--rows",
            str(rows),
            "--queries",
            str(queries),
            "--warmup",
            str(warmup),
            "--repetitions",
            str(repetitions),
        ],
        cwd=ROOT,
        text=True,
        capture_output=True,
        check=True,
    )
    return json.loads(process.stdout.splitlines()[-1])


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--sizes", nargs="+", type=int, default=[1000, 10000, 100000])
    parser.add_argument("--queries", type=int, default=200)
    parser.add_argument("--warmup", type=int, default=1)
    parser.add_argument("--repetitions", type=int, default=5)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--csv-output", type=Path)
    args = parser.parse_args()
    if not STORAGE.exists():
        raise SystemExit("storage_lab missing; run `make all` first")

    experiments = [
        run_storage(size, args.queries, args.warmup, args.repetitions) for size in args.sizes
    ]
    payload = {
        "schema_version": 1,
        "experiment": "storage-scaling",
        "captured_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "git_commit": command_output(["git", "rev-parse", "HEAD"]),
        "environment": {
            "system": platform.system(),
            "release": platform.release(),
            "architecture": platform.machine(),
            "compiler": command_output([os.environ.get("CXX", "clang++"), "--version"]).splitlines()[0],
            "cxxflags": os.environ.get(
                "CXXFLAGS",
                "-std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread",
            ),
        },
        "method": {
            "queries_per_size": args.queries,
            "warmup": args.warmup,
            "repetitions": args.repetitions,
            "query_seed": 0x9E3779B97F4A7C15,
            "prediction": {
                "sequential_scan": "work per point query should grow roughly with row count",
                "bplus_lookup": "tree navigation should grow much more slowly than a full scan",
                "index_rebuild": "reopening currently scans all persisted rows, so rebuild should grow with N",
            },
            "caution": "These measurements are empirical workload observations, not a proof of asymptotic complexity.",
        },
        "sizes": experiments,
    }
    encoded = json.dumps(payload, indent=2, sort_keys=True)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded + "\n", encoding="utf-8")
    if args.csv_output:
        args.csv_output.parent.mkdir(parents=True, exist_ok=True)
        with args.csv_output.open("w", newline="", encoding="utf-8") as handle:
            writer = csv.DictWriter(
                handle,
                fieldnames=[
                    "rows",
                    "queries",
                    "data_pages",
                    "index_height",
                    "leaf_splits",
                    "internal_splits",
                    "sequential_p50_ms",
                    "indexed_p50_ms",
                    "index_rebuild_p50_ms",
                ],
            )
            writer.writeheader()
            for item in experiments:
                writer.writerow(
                    {
                        "rows": item["rows"],
                        "queries": item["queries"],
                        "data_pages": item["data_pages"],
                        "index_height": item["index_height"],
                        "leaf_splits": item["index_leaf_splits"],
                        "internal_splits": item["index_internal_splits"],
                        "sequential_p50_ms": item["sequential_scan"]["p50_ms"],
                        "indexed_p50_ms": item["indexed_lookup"]["p50_ms"],
                        "index_rebuild_p50_ms": item["index_rebuild"]["p50_ms"],
                    }
                )
    print(encoded)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
