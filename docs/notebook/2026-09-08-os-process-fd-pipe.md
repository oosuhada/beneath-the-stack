# 2026-09-08 — process, exec, fd and pipe notebook

## Question

What actually survives `fork()`, what is replaced by `exec()`, and how does a shell pipeline move
bytes between processes?

## My prediction

I expected `fork()` to copy the parent variable value and file descriptors. I also expected `exec()`
to replace the program image while preserving already-open descriptors unless they are explicitly
closed or marked close-on-exec.

## Source reading

I cloned `mit-pdos/xv6-riscv` under `_systems-reference/xv6-riscv` and narrowed the reading to:

- `kernel/proc.c`: `kfork`, `exit`, `kwait`, `scheduler`;
- `kernel/exec.c`: `kexec` replaces the address space and sets up the user stack;
- `kernel/file.c`: file objects behind descriptors;
- `kernel/pipe.c`: pipe allocation, blocking write/read behavior;
- `kernel/vm.c`: page-table allocation/copy/free helpers.

## Implementation

`labs/process_fd/main.cpp` now observes more than a single `fork()`:

- parent/child variable behavior after `fork()`;
- `dup()` shared file offset;
- `exec()` with inherited stdout redirected through a pipe;
- a real `cat file | grep apple | wc -l` style three-process pipeline;
- non-blocking pipe capacity until `EAGAIN`;
- zombie state before `wait()` where the OS exposes enough information.

## What broke

The easy mistake in pipeline code is to leave unused pipe ends open in the parent or child. If the
writer end remains open, the reader may wait forever for EOF. The lab closes every unused end in
each process and then drains the final output pipe.

## Observation

The pipeline fixture writes five rows, three of which contain `apple`, then wires:

```text
cat temp-file → grep apple → wc -l
```

The expected output is `3`, with all three child exit codes recorded. The descriptor experiment also
shows that reading two bytes from one descriptor and then two bytes from its duplicate produces
`ab` and `cd`, demonstrating the shared open-file-description offset.

## Explanation

The descriptor integer is not the file itself. It is a per-process handle to a kernel file object.
After `dup()`, two descriptor numbers can refer to the same underlying open file description, so the
offset moves for both.

The shell pipeline works because `fork()` copies the descriptor table, `dup2()` maps a pipe end onto
stdin/stdout, and `exec()` replaces the program while keeping those descriptors available.

## Remaining uncertainty

The macOS lab observes POSIX behavior from user space. It does not inspect kernel scheduling
internals or page-table entries directly. xv6 source reading gives the simpler implementation model;
macOS is much more complex.
