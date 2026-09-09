# Defense: OS and runtime boundary

## 30 seconds

The capstone depends on OS-owned abstractions: TCP sockets, file descriptors, process restart and
filesystem writes. Earlier xv6/POSIX labs explain what those abstractions mean before the capstone
uses them.

## Applied path

- `socket`, `bind`, `listen`, `accept`, `connect`, `send` and `recv` are used directly in
  `labs/durable_job_runtime/main.cpp` on POSIX platforms.
- The journal path is ordinary filesystem state, so recovery can be tested by discarding process
  memory and reopening the file.
- The v0.4 fd/source-reading documents explain why a descriptor is a handle to kernel-maintained
  state rather than the state itself.

## Failure questions

- What survives process memory loss?
- What does not survive if a write never reaches the journal file?
- Why is `fsync` not claimed here even though durability was studied in v0.4?
- Why is loopback TCP not a remote network benchmark?

## Remaining gap

The project still does not trace XNU internals, implement kernel drivers, or use kernel-level packet
tracing. The defended capstone path is user-space systems programming over OS APIs.
