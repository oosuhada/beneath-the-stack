# Durable Job Runtime capstone

v0.6 introduces one cross-layer system rather than another isolated lab. The capstone accepts binary
framed commands over loopback TCP, parses submit requests, applies idempotency, schedules bounded
work, records state transitions in an append-only journal, and rebuilds state after deterministic
faults.

```text
TCP client
  -> firmware-style binary frame
  -> incremental parser
  -> request-id idempotency index
  -> bounded ready queue
  -> priority worker scheduler
  -> append-only journal
  -> recovery replay
  -> queryable in-memory state
```

## Source-level path

| Step | File/function | Preserved invariant |
| --- | --- | --- |
| Encode request | `include/bts/durable_job_runtime.hpp::encode_submit_command` | Submit payload has request id, priority, max attempts and body. |
| Frame bytes | `include/bts/firmware.hpp::encode_frame` | Payload is length-delimited and checksum-protected. |
| Partial TCP receive | `labs/durable_job_runtime/main.cpp::run_network_campaign` | Bytes can arrive in fragments without requiring message-sized reads. |
| Ring buffer | `include/bts/firmware.hpp::RingBuffer` | Receive memory is bounded. |
| Parser | `include/bts/firmware.hpp::ProtocolParser` | Truncated/oversized/corrupt frames do not become commands. |
| Idempotency | `DurableJobRuntime::accept` | Duplicate request IDs map to one logical job. |
| Scheduler | `DurableJobRuntime::claim_next` + `BinaryMinHeap` | Ready jobs are ordered by ready time, priority and insertion sequence. |
| Ownership | `DurableJobRuntime::claim_next` under `std::mutex` | A job has at most one active owner. |
| Storage | `append_locked` + `encode_journal_record` | State changes are appended with a checksum. |
| Recovery | `replay_journal` | Running jobs become retry-wait; corrupt tail records stop replay. |
| Query | `snapshot` / `find_by_request_id` | Rebuilt state can be inspected without trusting old memory. |

## Correctness invariants

- Duplicate request IDs do not create duplicate logical jobs.
- Invalid journal records never mutate state.
- A completed job is not returned to pending.
- A running job found during recovery is moved to retry wait.
- The ready queue is bounded and rejects excess accepted work.
- The parser accepts complete frames and rejects malformed command payloads.

## Deterministic failure campaign

`labs/durable_job_runtime/main.cpp::run_failure_campaign` runs these cases in one repeatable path:

| Failure | Injection | Expected recovery behavior |
| --- | --- | --- |
| duplicate request | submit the same request id twice | second submit returns the original job id |
| queue full | capacity two, submit three distinct requests | third request is rejected before journal accept |
| worker crash | claim a job and discard process state before `finish` | replay demotes `RUNNING` to `RETRY_WAIT` |
| retry | recovered job is processed later | final state becomes `SUCCEEDED` |
| corrupt journal tail | append a bad checksum record | replay counts invalid tail and keeps prior state |
| truncated journal tail | append incomplete record | replay counts invalid tail and keeps prior state |

## Performance campaign

The lab runs loopback TCP campaigns with 1, N and max-N clients. It records accepted frames,
partial reads, elapsed time and derived throughput. These are local observations, not a claim about
remote networking, TLS, event-loop scalability or production throughput.

## Correctness/performance trade-off

The capstone uses an append-only journal because the state transition history matters more than raw
rewrite speed for this exercise. The implementation flushes the C++ stream after each record but does
not claim power-loss durability or `fsync`-per-record safety. That trade-off is intentional: v0.6 is
about recovery from process restart and corrupt tails, not certified crash consistency.

The bounded queue rejects new accepted work instead of growing unbounded. That sacrifices admission
rate under overload to make memory pressure explicit and measurable.

## What this does not claim

- It is not a production job queue.
- It does not provide exactly-once delivery.
- It does not persist B+tree pages.
- It does not use a production event loop.
- It does not prove power-loss durability.

The precise claim is narrower: for selected deterministic failures, a small runtime can preserve
logical idempotency, bounded admission, single active ownership and restart recovery from an
append-only journal.
