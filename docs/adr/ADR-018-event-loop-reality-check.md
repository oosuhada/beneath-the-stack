# ADR-018: Add kqueue event-loop evidence after blocking socket labs

## Status

Accepted in v0.7.

## Context

The raw HTTP lab already covers blocking sockets, keep-alive, receive timeout and thread-per-client
behavior. The missing production-runtime bridge is event-driven I/O: the idea behind Node.js,
nginx-style workers and async runtimes.

## Decision

Add `labs/event_loop_reality/main.cpp` with one kernel-socket workload and three server strategies:

```text
blocking serial reader
thread per client
kqueue event loop on macOS / poll fallback on Linux CI
```

The workload uses `socketpair`, chunked writes and one delayed peer to make partial reads and slow
connection cost visible without claiming internet throughput.

## Consequences

- macOS evidence can honestly say the event-loop path used `kqueue`.
- Linux CI remains portable through `poll`; CI does not claim kqueue measurement.
- The first implementation caught a real EOF/drain bug, which is recorded as part of the learning
  evidence.

