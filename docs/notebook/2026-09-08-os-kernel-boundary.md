# 2026-09-08 OS kernel-boundary investigation

## Question

Can I trace one user-space call down to the kernel-facing abstraction and then connect process,
memory and filesystem behavior to observable experiments?

## My prediction

- `write()` would go through a syscall table and then write directly to a file.
- Same fd number in two processes would probably imply the same file state.
- `mmap` allocation would immediately increase resident memory.
- Round robin would improve fairness, but implementing it would be straightforward.
- `fsync` would always be slower than `write+close`.

## Implementation

- `labs/os_boundary/main.cpp`
  - supported `write()` boundary observation and Linux direct syscall path;
  - inherited fd vs independently reopened fd;
  - thread condition-variable ping-pong vs process pipe ping-pong;
  - `read()` loop vs file-backed `mmap` sequential access;
  - `write+close` vs `write+fsync+close`;
  - `fork()` + child writes mapped pages while parent verifies unchanged byte.
- `include/bts/scheduler.hpp` and `labs/scheduler/main.cpp`
  - FIFO, round-robin, non-preemptive priority, shortest-job-first;
  - waiting, turnaround, max wait, p95 wait, starvation threshold.
- `include/bts/toy_filesystem.hpp` and `labs/toy_filesystem/main.cpp`
  - absolute path parsing;
  - directory entries;
  - inode-like metadata;
  - fixed-size blocks;
  - hard-link aliasing.

## What broke

### macOS raw `syscall(2)`

The first implementation called `::syscall(SYS_write, ...)`. Apple marks `syscall(2)` deprecated,
and the project uses `-Werror`, so this failed compilation. I changed the lab to keep direct syscall
usage only where supported and to emit the macOS limitation as JSON rather than hide it behind a
warning suppression.

### Toy filesystem reference invalidation

`ToyFileSystem::mkdir()` and `write_file()` stored a mutable reference to a directory inode and then
called `allocate_inode()`, which could grow `std::vector<Inode>` and invalidate the reference. The
symptom was a segfault in `mastery_tests`. The fix was to re-fetch the parent inode after allocation
instead of keeping a reference across vector growth.

### Round-robin duplicate ready-queue entry

The first round-robin simulator marked the running job as not queued before enqueueing newly arrived
jobs. That allowed the current unfinished job to be enqueued twice. The symptom was impossible
unsigned waiting-time values. The fix was to keep the running job ineligible for enqueue until slice
accounting finishes.

### `sample` target exited too quickly

The first `sample` run failed because the lab completed before sampling began. Increasing
`--switch-rounds` produced a useful call graph.

## Observation

Smoke observations from the local MacBook Air run:

```text
fd inherited:     parent "ab", child "cd"
fd independent:   parent "ab", child "ab"
COW marker:       parent byte 1, child byte 2
thread ping-pong: ~0.6 ms for 25 round trips
process ping-pong: ~2.1 ms for 25 round trips
toy FS hard link: same inode, refcount 2
```

The longer `sample` trace captured `read` and `write` frames in `libsystem_kernel.dylib`, plus
condition-variable wait frames through pthread/libc++.

## Explanation

The deeper model is:

```text
integer fd
  -> per-process descriptor table slot
  -> open-file object
  -> offset + type
  -> pipe/device/inode implementation
```

and:

```text
virtual address
  -> process page table / VM object on the host OS
  -> physical pages only when mapped/touched/resolved
```

## What I changed in real software

- `browser-reliability-runtime`: queue writes now use file `datasync`, atomic rename and best-effort
  directory sync around the visible JSON state.
- `memory-atlas-server`: history append uses a POSIX append path and can opt into `fsync` with
  `CHERRY_HISTORY_DURABLE_WRITES=1`.

## Remaining uncertainty

- I have not traced XNU kernel source.
- I have not implemented `kqueue`/`epoll`.
- I have not simulated power-loss crash recovery.
- I have not implemented filesystem free-space management or journaling recovery.
- I can explain xv6's baseline eager `uvmcopy`; I cannot claim production copy-on-write VM expertise.
