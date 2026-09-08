# xv6 source reading: process state and scheduler loop

## Question

What does it mean for a process to be runnable, running, sleeping or zombie from the kernel's point
of view?

## My initial model

I thought of the scheduler as a priority algorithm. xv6's current scheduler is simpler and more
important for learning: it loops over a process table, finds a `RUNNABLE` process, marks it
`RUNNING`, and context-switches into its saved context. Policy is intentionally basic; state and
locking are the lesson.

## Relevant source

- `kernel/proc.h:82-103`: `struct proc` contains `state`, `chan`, `xstate`, `pid`, `pagetable`,
  `context`, `ofile[]` and `cwd`.
- `kernel/proc.c:422-470`: `scheduler()` scans `proc[]`, acquires `p->lock`, switches `RUNNABLE` to
  `RUNNING`, calls `swtch`, then resumes after the process yields/sleeps/exits.
- `kernel/proc.c:480-497`: `sched()` switches back to the CPU scheduler context and validates lock
  state.
- `kernel/proc.c:501-508`: `yield()` moves the current process back to `RUNNABLE`.
- `kernel/proc.c:563-590`: `sleep()` stores `chan`, sets `SLEEPING`, and `wakeup()` clears `chan` and
  returns sleepers to a runnable state.
- `kernel/trap.c:84-86`: timer interrupt path calls `yield()`.

## Actual control flow

```text
timer/device event or blocking call
  -> process changes state under p->lock
  -> sched()
  -> swtch(&p->context, &cpu->context)
  -> scheduler loop scans proc[]
  -> selected RUNNABLE proc becomes RUNNING
  -> swtch(&cpu->context, &p->context)
```

The scheduler is not just a choice function. It is a state machine with lock discipline.

## My experiment

`labs/scheduler/main.cpp` keeps policy separate from kernel state. It compares FIFO, round robin,
non-preemptive priority and shortest-job-first on the same convoy-style workload. The goal is not to
claim macOS uses these policies. The goal is to make policy trade-offs concrete before reading xv6's
state transitions.

`labs/os_boundary/main.cpp` also compares:

- a no-switch loop;
- thread condition-variable ping-pong;
- process pipe ping-pong.

`evidence/debugger/v0.4-sample-os-boundary.txt` captures `sample` call stacks showing the observed
program spending time in `read`, `write` and pthread condition-variable wait paths.

## What differed from my expectation

The first round-robin simulator had a bug: the currently running job was marked as not queued before
arrival enqueue, so it could be inserted into the ready queue twice. This produced impossible
completion/waiting values. The fix was to treat the running job as ineligible for re-enqueue until
after the slice accounting finishes.

## What remains unclear

I can read xv6's `swtch` boundary and observe user-space switching costs. I have not traced macOS's
real scheduler or measured voluntary/involuntary context switches with kernel counters yet.
