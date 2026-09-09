# Defense: concurrency and ownership

## 30 seconds

The main concurrency lesson is that the correct ownership boundary matters more than a fast-looking
operation. Earlier labs show lost updates. The capstone applies the lesson by protecting request
dedupe, job state and worker claim under one mutex.

## Applied path

`include/bts/durable_job_runtime.hpp::DurableJobRuntime::claim_next` changes a job from `PENDING` or
`RETRY_WAIT` to `RUNNING` while holding the runtime mutex. That preserves the invariant that a job has
at most one active owner. `finish` requires the job to still be `RUNNING`; a completed job cannot be
completed twice through the public path.

## Failure questions

- What if two workers pop the same ready job?
- What if the process crashes after `RUNNING` is appended but before `SUCCEEDED`?
- Why is `load -> increment -> store` not the same as atomic read-modify-write?
- Why is exactly-once delivery not claimed?

## Deep follow-up

The capstone is intentionally mutex-based. A lock-free design would need a stronger memory-ordering
argument, ABA handling and crash-recovery semantics. That would be a different project. The defended
claim here is narrower: under one process and deterministic failures, the runtime preserves active
ownership and recovers in-flight work to retry wait.
