# Defense: capstone

## 30 seconds

`durable-job-runtime` is the proof that the layers are connected. It accepts a framed TCP request,
deduplicates it, schedules bounded work, records every transition and recovers from selected crashes
and corrupted journal tails.

## 2 minutes

The most important invariant is idempotent logical effect, not exactly-once delivery. A repeated
request ID maps to the same job. If a worker crashes while a job is running, replay does not mark it
complete; it moves it to retry wait. If the journal tail is corrupt or truncated, replay stops before
the invalid record mutates state. If producers outrun consumers, admission is rejected before the
runtime writes an accept record.

## 10 minutes / whiteboard

Draw these boxes and explain the failure at each boundary:

```text
client -> TCP byte stream -> frame parser -> bounded queue -> worker -> journal -> replay -> index
```

- TCP: partial reads are normal.
- Parser: length/checksum is the difference between bytes and commands.
- Queue: bounded memory makes overload explicit.
- Worker: mutex-protected claim gives one active owner.
- Journal: append-only transitions allow replay.
- Replay: valid prefix rebuilds state; invalid tail is ignored.
- Index: request id maps duplicates to one logical job.

## Interview traps to avoid

- Do not say production-ready.
- Do not say exactly-once delivery.
- Do not say fsync-safe power-loss durability.
- Do not claim physical hardware measurements.
- Do not claim PostgreSQL planner behavior from the toy storage lab.
