# ADR-013: Bounded journaled runtime for the v0.6 capstone

## Status

Accepted.

## Context

Earlier versions implemented algorithms, networking, storage, OS boundaries and firmware simulation
as separate labs. That made each concept visible, but did not prove that the layers could be composed
without hiding invariants inside framework code.

## Decision

Build a tiny durable job runtime with direct C++ components:

```text
TCP frame -> parser -> idempotency index -> bounded priority queue -> worker -> journal -> replay
```

Use the existing custom `RingBuffer`, `BinaryMinHeap` and `LinearProbeHashTable` where they naturally
fit. Keep the runtime small enough that the request path can be defended at the source-file level.

## Consequences

- The capstone tests cross-layer invariants instead of isolated trivia.
- Queue-full behavior is explicit: reject rather than silently allocate forever.
- A corrupt journal tail is observable and does not mutate state.
- Running jobs are conservatively retried after restart.
- The implementation remains a learning system. It does not claim distributed exactly-once delivery,
  power-loss durability, production scheduling or persisted B+tree pages.
