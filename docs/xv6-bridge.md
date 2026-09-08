# xv6 bridge — toy POSIX experiments → a small teaching kernel

The v0.2 OS lab runs on macOS/POSIX. xv6 is used as a source-reading bridge, not copied or forked.
Its root license grants permissive MIT-style rights, but this repository still keeps its own toy
code independent so the learning path is explicit.

| Concept | `beneath-the-stack` evidence | xv6 source to read next | Question to answer |
| --- | --- | --- | --- |
| Process / `fork` | `labs/process_fd/main.cpp` changes a child-local value and proves the parent copy is unchanged | [`kernel/proc.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/proc.c) | What kernel state must be duplicated or referenced for a new process? |
| Syscall boundary | process lab times repeated `getpid()`-style boundary calls vs a cached value; result is explicitly platform-specific | [`kernel/syscall.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/syscall.c) | How does a syscall number become a kernel function call? |
| File descriptors | `dup` experiment shows two descriptors sharing one file offset | [`kernel/file.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/file.c) | Why is a descriptor number not the file object itself? |
| Pipe | child/parent exchange uses a real POSIX pipe | [`kernel/pipe.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/pipe.c) | Where do pipe bytes live and what wakes blocked readers/writers? |
| Lock | mutex/atomic lab demonstrates single-process shared-state coordination | [`kernel/spinlock.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/spinlock.c) | Why can kernel critical sections require a spin lock rather than sleeping? |
| Context switch | roadmap: thread/context experiment | [`kernel/swtch.S`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/swtch.S) | Which register state must survive a switch? |
| Virtual memory | roadmap: mmap/page-fault/page-table lab | [`kernel/vm.c`](https://github.com/mit-pdos/xv6-riscv/blob/riscv/kernel/vm.c) | How does a virtual address resolve to a physical page and permission? |

This ordering prevents source reading from becoming passive browsing: first make the smallest
observable experiment, then locate the kernel machinery that supplies the abstraction.

