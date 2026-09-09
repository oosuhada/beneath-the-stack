# Notebook: real systems validation

## Prediction

- PostgreSQL should choose a sequential scan for a broad predicate and an index path for a selective
  composite predicate.
- A second transaction should not see an uncommitted update under PostgreSQL's default behavior.
- A row lock should block a conflicting update until commit or timeout.
- Two transactions that lock rows in opposite order should trigger deadlock detection.
- A kqueue event loop should avoid blocking behind the first slow peer, but it must handle EOF and
  partial reads carefully.
- Sanitizer tooling should produce source-line evidence, but prior macOS sanitizer limitations mean
  the run may expose toolchain limits rather than the intended report.

## Implementation

- `tools/run_postgres_reality.py` creates a disposable database, runs planner/MVCC/lock/deadlock/WAL
  probes, writes `evidence/v0.7-postgres-reality.json`, then drops the database.
- `labs/event_loop_reality/main.cpp` compares blocking serial, thread-per-client and kqueue/poll
  event-loop reads over the same socketpair workload.
- `tools/run_debugging_case.sh` builds ASan, UBSan and plain binaries from
  `labs/debugging_case/main.cpp`.

## What broke

1. The first event-loop implementation sometimes hung or under-counted bytes. Cause: EOF can arrive
   after readable data is drained, so the loop must close an fd when EOF is observed even if the
   final read returns `EAGAIN` rather than `0`.
2. ASan did not emit a normal use-after-free report in this macOS environment. It aborted in the
   sanitizer runtime itself. The script now records that limitation and still captures UBSan
   source-line evidence for signed overflow.

## Measurements to read

- `evidence/v0.7-postgres-reality.json`
- `evidence/v0.7-macbook-air.json`
- `evidence/debugger/v0.7-debugging-case-summary.json`

## Remaining gap

Physical MCU hardware is still not connected. The correct follow-up is not more host simulation; it
is a Pico or ESP32 board running a tiny timer/UART/GPIO firmware with the same bounded-buffer and
state-machine architecture.

