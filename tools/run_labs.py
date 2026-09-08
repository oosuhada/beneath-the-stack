#!/usr/bin/env python3
"""Run every v0.1 executable and emit one reproducible evidence document."""

from __future__ import annotations

import argparse
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
        }
    return {
        "hash_lab": [],
        "heap_lab": [],
        "graph_lab": [],
        "race_lab": [],
        "http_lab": [],
        "btree_lab": [],
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
        "python": platform.python_version(),
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", choices=["quick", "standard"], default="standard")
    parser.add_argument("--output", type=Path)
    parser.add_argument("--dashboard-data", action="store_true")
    args = parser.parse_args()

    if not BIN.exists():
        raise SystemExit("build/bin does not exist; run `make all` first")

    configurations = profile_arguments(args.profile)
    labs = [run_lab(executable, values) for executable, values in configurations.items()]
    payload = {
        "schema_version": 1,
        "project": "beneath-the-stack",
        "profile": args.profile,
        "captured_at_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
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
    if args.dashboard_data:
        destination = ROOT / "dashboard" / "data" / "latest.json"
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_text(encoded + "\n", encoding="utf-8")
    print(encoded)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

