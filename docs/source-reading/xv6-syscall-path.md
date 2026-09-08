# xv6 source reading: `write()` syscall path

## Question

When a user-space program calls `write(fd, buffer, n)`, where does the work actually go after the
library wrapper crosses the kernel boundary?

## My initial model

I expected a single path: user wrapper -> trap -> syscall table -> `sys_write` -> file write. That
was directionally right, but too flat. The important part is that the descriptor number is not the
file. The kernel first resolves the integer descriptor through the current process, then the shared
`struct file` decides whether the target is a pipe, device or inode.

## Relevant source

Local reference: `../_systems-reference/xv6-riscv`.

- `user/usys.pl`: generates user stubs such as `read`, `write` and `sbrk`.
- `kernel/trap.c:38-88`: `usertrap()` recognizes syscall traps and calls `syscall()`.
- `kernel/syscall.c:136-150`: `syscall()` reads the syscall number from `p->trapframe->a7`, calls
  the dispatch table entry, then writes the return value to `p->trapframe->a0`.
- `kernel/sysfile.c:20-35`: `argfd()` maps an integer fd to `myproc()->ofile[fd]`.
- `kernel/sysfile.c:82-92`: `sys_write()` extracts `fd`, user pointer and length, then delegates to
  `filewrite()`.
- `kernel/file.c:16-20`: global file table stores `struct file` objects.
- `kernel/file.c:135-176`: `filewrite()` branches by file type: pipe, device or inode.

## Actual control flow

```text
user write(fd, buf, n)
  -> ecall / trap into kernel
  -> usertrap()
  -> syscall()
  -> sys_write()
  -> argfd(fd) reads myproc()->ofile[fd]
  -> filewrite(struct file*)
       FD_PIPE   -> pipewrite()
       FD_DEVICE -> devsw[major].write()
       FD_INODE  -> begin_op(); ilock(); writei(); iunlock(); end_op()
```

The key data structures are `struct proc`, especially `ofile[NOFILE]`, and `struct file`, especially
`type`, `ref`, `off`, `pipe` and `ip`.

## My experiment

`labs/os_boundary/main.cpp` observes the descriptor/object boundary from user space:

- inherited fd across `fork()` shares an open-file description, so parent reads `ab` and child then
  reads `cd`;
- independently reopening the same path into the same descriptor number gives separate offsets, so
  parent and child both read `ab`;
- macOS marks raw `syscall(2)` deprecated, so the portable local build records that limitation and
  uses supported `write()` while Linux CI can still compile the general POSIX path.

## What differed from my expectation

I initially treated “same fd number” as the important identity. The source and experiment show the
fd number is only an index into a per-process table. Sharing depends on whether those entries point
to the same open-file object.

## What remains unclear

xv6 makes the path inspectable, but macOS uses a different kernel and libc boundary. I can explain
the abstraction and observe user-space behavior; I cannot claim I traced the real XNU `write()`
implementation here.
