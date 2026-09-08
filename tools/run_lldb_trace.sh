#!/usr/bin/env bash
set -euo pipefail

CXX_BIN="${CXX:-clang++}"
OUT="${1:-evidence/debugger/v0.4-lldb-toy-filesystem.txt}"
BIN="${TMPDIR:-/tmp}/beneath-the-stack-toy-fs-debug"
mkdir -p "$(dirname "$OUT")"

if ! command -v lldb >/dev/null 2>&1; then
  printf 'lldb unavailable on this machine\n' >"$OUT"
  exit 0
fi

"$CXX_BIN" -std=c++20 -O0 -g -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread \
  labs/toy_filesystem/main.cpp -o "$BIN"

set +e
lldb --batch \
  -o 'breakpoint set --name bts::ToyFileSystem::write_file' \
  -o 'run --warmup 0 --repetitions 1' \
  -o 'bt' \
  -o 'frame variable path contents' \
  -o 'disassemble --frame --mixed --count 24' \
  -- "$BIN" >"$OUT" 2>&1
status=$?
set -e

if [[ $status -ne 0 ]]; then
  printf '\n[lldb exited with status %d; trace retained as environment evidence]\n' "$status" >>"$OUT"
fi

exit 0
