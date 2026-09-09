# ADR-014: Reject admission when the capstone queue is full

## Status

Accepted.

## Context

The capstone has to show what happens when producers outrun consumers. An unbounded vector or deque
would hide the overload by moving it into heap growth. Dropping old work would make job semantics
surprising because a client could receive acceptance for a job that later disappears.

## Decision

Use a bounded ready queue and reject new distinct requests before appending an `ACCEPT` record when
the queue is full.

Duplicate request IDs are still handled through the idempotency index: a duplicate maps to the
existing logical job instead of consuming another queue slot.

## Alternatives rejected

| Alternative | Reason rejected |
| --- | --- |
| Unbounded queue | Hides memory pressure and makes overload tests meaningless. |
| Drop oldest | Can discard already accepted logical work. |
| Drop newest after journal append | Creates a durable accepted record for work that is not scheduled. |
| Block TCP handler | Simpler to reason about, but makes this tiny blocking server easier to wedge under slow consumers. |

## Consequences

- Queue-full behavior is deterministic and testable.
- Throughput is lower under bursty load than an unbounded queue would appear to be.
- The runtime can honestly report rejected work instead of pretending all requests are accepted.
