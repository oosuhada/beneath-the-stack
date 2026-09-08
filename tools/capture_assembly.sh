#!/usr/bin/env bash
set -euo pipefail

CXX_BIN="${CXX:-clang++}"
OUT_DIR="${1:-${TMPDIR:-/tmp}/beneath-the-stack-assembly}"
mkdir -p "$OUT_DIR"

"$CXX_BIN" -std=c++20 -S -O0 experiments/assembly/loops.cpp -o "$OUT_DIR/loops-O0.s"
"$CXX_BIN" -std=c++20 -S -O2 experiments/assembly/loops.cpp -o "$OUT_DIR/loops-O2.s"
printf '%s\n' "$OUT_DIR/loops-O0.s" "$OUT_DIR/loops-O2.s"
