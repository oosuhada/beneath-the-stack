#!/usr/bin/env bash
set -euo pipefail

CXX_BIN="${CXX:-clang++}"
OUT_DIR="${TMPDIR:-/tmp}/beneath-the-stack-sanitizers"
mkdir -p "$OUT_DIR"

"$CXX_BIN" -std=c++20 -O1 -g -fsanitize=address -fno-omit-frame-pointer \
  experiments/sanitizers/heap_overflow.cpp -o "$OUT_DIR/heap_overflow"
"$CXX_BIN" -std=c++20 -O1 -g -fsanitize=undefined -fno-sanitize-recover=undefined \
  experiments/sanitizers/misaligned_access.cpp -o "$OUT_DIR/misaligned_access"

set +e
"$OUT_DIR/heap_overflow" >"$OUT_DIR/asan.out" 2>"$OUT_DIR/asan.err"
asan_status=$?
"$OUT_DIR/misaligned_access" >"$OUT_DIR/ubsan.out" 2>"$OUT_DIR/ubsan.err"
ubsan_status=$?
set -e

asan_detected=false
ubsan_detected=false
if [[ $asan_status -ne 0 ]] && grep -q "AddressSanitizer" "$OUT_DIR/asan.err"; then
  asan_detected=true
fi
if [[ $ubsan_status -ne 0 ]] && grep -Eq "runtime error|UndefinedBehaviorSanitizer" "$OUT_DIR/ubsan.err"; then
  ubsan_detected=true
fi

printf 'asan_heap_overflow_detected=%s\n' "$asan_detected"
printf 'ubsan_misaligned_access_detected=%s\n' "$ubsan_detected"
printf 'asan_exit=%d\n' "$asan_status"
printf 'ubsan_exit=%d\n' "$ubsan_status"

[[ "$asan_detected" == true && "$ubsan_detected" == true ]]
