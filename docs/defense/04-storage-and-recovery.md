# Defense: storage and recovery

## 30 seconds

The capstone persists state transitions, not only final state. On restart it replays the journal,
validates checksums, rebuilds the idempotency index and moves in-flight jobs to retry wait.

## Applied path

- `encode_journal_record` writes version, sequence, op, job ID, request ID, priority, attempts,
  state, ready time, payload and checksum.
- `append_locked` appends a record before exposing the state transition inside the runtime.
- `replay_journal` reads until the first invalid record and then stops.
- `apply_replayed_record_locked` refuses to move terminal jobs back to pending.

## Failure questions

- What if the journal tail is truncated?
- What if a checksum is corrupt?
- What if a process dies with a job marked `RUNNING`?
- Why does this not prove power-loss durability?

## Trade-off

Appending is easier to recover than rewriting one mutable state file, but the journal can grow and
requires replay. The capstone does not implement compaction or a persisted B+tree. It defends a
narrower property: acknowledged logical records in a valid prefix can rebuild state after process
restart, and invalid tails do not mutate state.
