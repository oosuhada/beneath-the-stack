# xv6 source reading: virtual memory and page allocation

## Question

Why is a pointer not simply “the RAM address,” and what does allocation do before a page is actually
touched?

## My initial model

I knew virtual memory involved page tables, but I over-associated allocation with immediate physical
memory use. The experiments made the separation visible: reserving a mapping can leave RSS mostly
unchanged; touching each page changes resident memory.

## Relevant source

- `kernel/proc.h:97-99`: each process records `sz`, a user `pagetable`, and a trapframe.
- `kernel/sysproc.c:40-52`: `sys_sbrk()` starts from `myproc()->sz` and grows/shrinks process memory.
- `kernel/vm.c:180-187`: `uvmcreate()` allocates an empty page table page.
- `kernel/vm.c:218-235`: `uvmalloc()` allocates physical pages and maps them into the user page
  table.
- `kernel/vm.c:194-212`: `uvmunmap()` walks page-table entries and optionally frees physical pages.
- `kernel/vm.c:299-325`: xv6 `uvmcopy()` for `fork()` copies mapped physical pages into a new address
  space. This baseline xv6 path is eager copy, not the same as a production COW implementation.
- `kernel/trap.c:71-74`: page-fault path calls `vmfault()` for lazily allocated pages.

## Actual model

```text
virtual address
  -> page-table walk
  -> PTE flags decide validity/permissions
  -> physical page exists only if mapped/allocated
  -> trap/page fault if permission or mapping is invalid
```

## My experiment

`labs/virtual_memory/main.cpp` and `labs/os_boundary/main.cpp` observe:

- `mmap` without touching pages;
- touching every page;
- `PROT_NONE` guard page failure in a child process;
- file-backed `mmap` persistence via `msync`;
- `fork()` parent/child divergence after child writes to mapped memory.

The v0.4 COW experiment records that after the child writes page markers, the parent still sees the
original first byte. That is user-space evidence for address-space isolation and copy-on-write style
behavior on the host OS, not a claim that xv6 baseline implements COW.

## What differed from my expectation

I expected direct `syscall(2)` to be a useful local bridge for `sbrk`/write experiments. On macOS the
raw `syscall()` function is deprecated and fails the project's `-Werror` build. The lab records that
limitation instead of suppressing the warning.

## What remains unclear

I can demonstrate reservation vs touch, guard page behavior, and parent/child divergence. I cannot
yet explain XNU's exact VM object/shadow-chain implementation or claim kernel-level VM expertise.
