#!/usr/bin/env bash
set -euo pipefail

OUT="${1:-evidence/debugger/v0.4-sample-os-boundary.txt}"
SUMMARY="${2:-evidence/debugger/v0.4-sample-summary.txt}"
mkdir -p "$(dirname "$OUT")"

if ! command -v sample >/dev/null 2>&1; then
  printf 'sample unavailable on this machine\n' >"$SUMMARY"
  exit 0
fi

if [[ ! -x build/bin/os_boundary_lab ]]; then
  make build/bin/os_boundary_lab >/dev/null
fi

build/bin/os_boundary_lab --switch-rounds 200000 --io-bytes 1048576 --cow-mib 8 --warmup 0 --repetitions 1 \
  >/tmp/bts-os-boundary-sample.json &
pid=$!
sleep 0.05
set +e
sample "$pid" 1 1 -file "$OUT" >/tmp/bts-sample.out 2>/tmp/bts-sample.err
sample_status=$?
wait "$pid"
lab_status=$?
set -e

{
  printf 'sample_status=%d\n' "$sample_status"
  printf 'lab_status=%d\n' "$lab_status"
  printf 'sample stdout:\n'
  cat /tmp/bts-sample.out
  printf 'sample stderr:\n'
  cat /tmp/bts-sample.err
} >"$SUMMARY"

exit 0
