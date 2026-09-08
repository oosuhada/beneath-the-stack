# Source reading — xv6 process, file descriptor and virtual memory bridge

Source: local clone of `mit-pdos/xv6-riscv` at `_systems-reference/xv6-riscv`.

## Question

Where does a small POSIX experiment connect to a real operating-system implementation?

## Relevant files/functions read

| Topic | xv6 file/function | Local toy experiment |
| --- | --- | --- |
| fork | `kernel/sysproc.c::sys_fork`, `kernel/proc.c::kfork` | `process_isolation_experiment` |
| wait/zombie | `kernel/proc.c::exit`, `kernel/proc.c::kwait` | `zombie_before_wait_experiment` |
| exec | `kernel/exec.c::kexec` | `exec_inherited_stdout_experiment` |
| descriptors | `kernel/file.c::fileread`, `kernel/file.c::filewrite` | `duplicated_descriptor_offset_experiment` |
| pipe | `kernel/pipe.c::pipealloc`, `pipewrite`, `piperead` | three-stage pipeline + pipe capacity probe |
| page table | `kernel/vm.c::uvmcreate`, `uvmalloc`, `uvmcopy`, `uvmunmap` | `labs/virtual_memory/main.cpp` |
| scheduling | `kernel/proc.c::scheduler` | thread/process benchmarks and future toy scheduler |

## What the code appears to do

xv6 keeps process state in `struct proc`. `kfork()` allocates a process, copies the parent user
memory into the child, duplicates file descriptors and arranges the child trapframe so `fork()`
returns `0` in the child. `kexec()` is different: it builds a new user address space from an ELF
program and replaces the old one while the process identity and inherited descriptors remain.

`pipe.c` makes the blocking behavior concrete. A pipe has a bounded buffer, read/write counters and
sleep/wakeup behavior when the pipe is empty or full.

`vm.c` is the bridge from user pointers to page-table-backed address spaces. The toy VM lab cannot
read physical addresses on macOS, but it can show that mapping address space is cheaper than
touching pages and that a protected page produces a signal only when accessed.

## Important differences

- xv6 is intentionally small and educational; macOS is not xv6.
- My lab uses POSIX user-space observations, not kernel instrumentation.
- The toy VM experiment observes page-sized behavior and signals, not real page-table entries.
- The pipeline uses `/bin/cat`, `/usr/bin/grep` and `/usr/bin/wc`; xv6 has smaller user programs.

## What I still do not understand deeply

- Real macOS scheduler internals and per-thread scheduling accounting.
- Copy-on-write and page-fault handling in a production kernel.
- Descriptor flags such as `FD_CLOEXEC` across more complex process trees.
