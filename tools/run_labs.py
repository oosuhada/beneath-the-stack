#!/usr/bin/env python3
"""Run every systems-mastery executable and emit one reproducible evidence document."""

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
BIN = ROOT / "build" / "bin"


def command_output(command: list[str]) -> str:
    try:
        return subprocess.check_output(command, text=True, stderr=subprocess.STDOUT).strip()
    except (OSError, subprocess.CalledProcessError):
        return "unavailable"


def run_lab(executable: str, arguments: list[str]) -> dict:
    process = subprocess.run(
        [str(BIN / executable), *arguments],
        cwd=ROOT,
        check=True,
        text=True,
        capture_output=True,
    )
    lines = [line for line in process.stdout.splitlines() if line.strip()]
    if not lines:
        raise RuntimeError(f"{executable} produced no JSON output")
    return json.loads(lines[-1])


def profile_arguments(profile: str) -> dict[str, list[str]]:
    if profile == "quick":
        return {
            "hash_lab": ["--size", "3000", "--warmup", "1", "--repetitions", "3"],
            "heap_lab": ["--size", "600", "--warmup", "1", "--repetitions", "3"],
            "graph_lab": ["--side", "50", "--warmup", "1", "--repetitions", "3"],
            "race_lab": ["--threads", "4", "--increments", "15000", "--warmup", "0", "--repetitions", "2"],
            "http_lab": ["--requests", "20", "--clients", "4", "--warmup", "1", "--repetitions", "2"],
            "btree_lab": ["--rows", "3000", "--queries", "150", "--warmup", "1", "--repetitions", "3"],
            "data_structures_lab": ["--size", "2000", "--warmup", "1", "--repetitions", "3"],
            "algorithm_defense_lab": ["--size", "20000", "--fib", "24", "--warmup", "1", "--repetitions", "2"],
            "memory_lab": ["--size", "50000", "--warmup", "1", "--repetitions", "3"],
            "process_lab": ["--warmup", "0", "--repetitions", "3"],
            "os_boundary_lab": [
                "--switch-rounds",
                "150",
                "--io-bytes",
                "65536",
                "--cow-mib",
                "4",
                "--warmup",
                "0",
                "--repetitions",
                "2",
            ],
            "vm_lab": ["--mib", "8", "--warmup", "0", "--repetitions", "2"],
            "scheduler_lab": ["--quantum", "5", "--warmup", "1", "--repetitions", "2"],
            "storage_lab": ["--rows", "512", "--queries", "40", "--warmup", "1", "--repetitions", "2"],
            "allocator_lab": ["--operations", "1500", "--warmup", "1", "--repetitions", "2"],
            "toy_filesystem_lab": ["--warmup", "1", "--repetitions", "2"],
            "firmware_boundary_lab": ["--warmup", "1", "--repetitions", "2"],
            "embedded_lab": ["--warmup", "1", "--repetitions", "3"],
            "durable_job_runtime_lab": ["--clients", "5", "--max-clients", "20", "--warmup", "0", "--repetitions", "1"],
            "event_loop_reality_lab": ["--clients", "8", "--bytes", "64", "--slow-first-ms", "5"],
            "debugging_case_lab": [],
        }
    return {
        "hash_lab": [],
        "heap_lab": [],
        "graph_lab": [],
        "race_lab": [],
        "http_lab": [],
        "btree_lab": [],
        "data_structures_lab": [],
        "algorithm_defense_lab": [],
        "memory_lab": [],
        "process_lab": [],
        "os_boundary_lab": [],
        "vm_lab": [],
        "scheduler_lab": [],
        "storage_lab": [],
        "allocator_lab": [],
        "toy_filesystem_lab": [],
        "firmware_boundary_lab": [],
        "embedded_lab": [],
        "durable_job_runtime_lab": [],
        "event_loop_reality_lab": [],
        "debugging_case_lab": [],
    }


def machine_metadata() -> dict:
    model = command_output(["sysctl", "-n", "hw.model"]) if platform.system() == "Darwin" else platform.machine()
    memory = command_output(["sysctl", "-n", "hw.memsize"]) if platform.system() == "Darwin" else "unavailable"
    compiler = command_output([os.environ.get("CXX", "clang++"), "--version"]).splitlines()[0]
    return {
        "system": platform.system(),
        "release": platform.release(),
        "machine": platform.machine(),
        "model": model,
        "memory_bytes": memory,
        "compiler": compiler,
        "cxxflags": os.environ.get(
            "CXXFLAGS",
            "-std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread",
        ),
        "python": platform.python_version(),
    }


def benchmark_rows(payload: dict) -> list[dict[str, object]]:
    rows: list[dict[str, object]] = []

    def walk(lab_name: str, value: object, path: str) -> None:
        if isinstance(value, dict):
            if {
                "name",
                "warmup",
                "repetitions",
                "mean_ms",
                "stddev_ms",
                "p50_ms",
                "p95_ms",
                "min_ms",
                "max_ms",
            }.issubset(value):
                rows.append(
                    {
                        "lab": lab_name,
                        "metric_path": path,
                        "benchmark": value["name"],
                        "warmup": value["warmup"],
                        "repetitions": value["repetitions"],
                        "mean_ms": value["mean_ms"],
                        "stddev_ms": value["stddev_ms"],
                        "p50_ms": value["p50_ms"],
                        "p95_ms": value["p95_ms"],
                        "min_ms": value["min_ms"],
                        "max_ms": value["max_ms"],
                    }
                )
                return
            for key, child in value.items():
                walk(lab_name, child, f"{path}.{key}" if path else key)
        elif isinstance(value, list):
            for index, child in enumerate(value):
                walk(lab_name, child, f"{path}[{index}]")

    for lab in payload["labs"]:
        walk(lab["lab"], lab, "")
    return rows


def write_benchmark_csv(path: Path, payload: dict) -> None:
    rows = benchmark_rows(payload)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=[
                "lab",
                "metric_path",
                "benchmark",
                "warmup",
                "repetitions",
                "mean_ms",
                "stddev_ms",
                "p50_ms",
                "p95_ms",
                "min_ms",
                "max_ms",
            ],
        )
        writer.writeheader()
        writer.writerows(rows)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", choices=["quick", "standard"], default="standard")
    parser.add_argument("--output", type=Path)
    parser.add_argument("--csv-output", type=Path)
    parser.add_argument("--dashboard-data", action="store_true")
    args = parser.parse_args()

    if not BIN.exists():
        raise SystemExit("build/bin does not exist; run `make all` first")

    configurations = profile_arguments(args.profile)
    labs = [run_lab(executable, values) for executable, values in configurations.items()]
    payload = {
        "schema_version": 2,
        "project": "beneath-the-stack",
        "profile": args.profile,
        "captured_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "git_commit": command_output(["git", "rev-parse", "HEAD"]),
        "environment": machine_metadata(),
        "method": {
            "clock": "steady_clock",
            "summary": "warm-up followed by repeated wall-clock samples; each lab reports mean/stddev/p50/p95/min/max",
        },
        "labs": labs,
    }
    encoded = json.dumps(payload, indent=2, sort_keys=True)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded + "\n", encoding="utf-8")
    if args.csv_output:
        write_benchmark_csv(args.csv_output, payload)
    if args.dashboard_data:
        destination = ROOT / "dashboard" / "data" / "latest.json"
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_text(encoded + "\n", encoding="utf-8")
    print(encoded)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

