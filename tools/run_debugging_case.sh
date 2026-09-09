#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="$ROOT/evidence/debugger"
mkdir -p "$OUT_DIR" "$ROOT/build/bin"

CXX="${CXX:-c++}"
ASAN_BIN="$ROOT/build/bin/debugging_case_asan"
UBSAN_BIN="$ROOT/build/bin/debugging_case_ubsan"
PLAIN_BIN="$ROOT/build/bin/debugging_case_plain"
ASAN_RAW="$OUT_DIR/v0.7-asan-use-after-free.txt"
UBSAN_RAW="$OUT_DIR/v0.7-ubsan-signed-overflow.txt"
SUMMARY="$OUT_DIR/v0.7-debugging-case-summary.json"

"$CXX" -std=c++20 -O0 -g -I"$ROOT/include" "$ROOT/labs/debugging_case/main.cpp" -o "$PLAIN_BIN"
"$CXX" -std=c++20 -O0 -g -fsanitize=address -fno-omit-frame-pointer \
  -I"$ROOT/include" "$ROOT/labs/debugging_case/main.cpp" -o "$ASAN_BIN"
"$CXX" -std=c++20 -O0 -g -fsanitize=undefined -fno-sanitize-recover=undefined \
  -I"$ROOT/include" "$ROOT/labs/debugging_case/main.cpp" -o "$UBSAN_BIN"

set +e
ASAN_OPTIONS=detect_leaks=0 "$ASAN_BIN" --buggy-use-after-free >"$ASAN_RAW.stdout" 2>"$ASAN_RAW"
ASAN_STATUS=$?
"$UBSAN_BIN" --buggy-signed-overflow >"$UBSAN_RAW.stdout" 2>"$UBSAN_RAW"
UBSAN_STATUS=$?
set -e

FIXED_OUTPUT="$("$PLAIN_BIN" --fixed)"

if grep -q "heap-use-after-free" "$ASAN_RAW" && [ "$ASAN_STATUS" -ne 0 ]; then
  ASAN_DETECTED=true
else
  ASAN_DETECTED=false
fi

if grep -q "signed integer overflow" "$UBSAN_RAW" && [ "$UBSAN_STATUS" -ne 0 ]; then
  UBSAN_DETECTED=true
else
  UBSAN_DETECTED=false
fi

python3 - <<PY
import json
from pathlib import Path

asan_detected = json.loads("$ASAN_DETECTED")
ubsan_detected = json.loads("$UBSAN_DETECTED")
summary = {
    "source_commit": "$(git -C "$ROOT" rev-parse HEAD)",
    "compiler": "$("$CXX" --version | head -1)",
    "asan": {
        "buggy_exit_status": $ASAN_STATUS,
        "detected_heap_use_after_free": asan_detected,
        "raw_report": "evidence/debugger/v0.7-asan-use-after-free.txt",
        "runtime_note": "If detected is false on macOS, inspect the raw report; this environment has previously failed inside the ASan runtime before producing a normal UAF report.",
    },
    "ubsan": {
        "buggy_exit_status": $UBSAN_STATUS,
        "detected_signed_integer_overflow": ubsan_detected,
        "raw_report": "evidence/debugger/v0.7-ubsan-signed-overflow.txt",
    },
    "fixed_output": json.loads('''$FIXED_OUTPUT'''),
    "root_cause": "debugging fixtures preserve a concrete symptom -> sanitizer report -> source-level fix path; UAF reads after delete[], overflow exceeds int range before a scheduler-like score can be compared safely",
}
Path("$SUMMARY").write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
print(json.dumps(summary, indent=2, sort_keys=True))
PY

test "$ASAN_DETECTED" = true -o "$UBSAN_DETECTED" = true
