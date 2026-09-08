# 2026-09-08 — allocator fragmentation notebook

## Question

Why can an allocation fail even when the allocator has enough total free memory?

## My prediction

If two adjacent blocks are freed, a later large allocation should be able to reuse the combined
space. I expected this to be automatic once a free list existed.

## Implementation

I built three deliberately small variants in `include/bts/allocator.hpp` and
`labs/allocator/main.cpp`:

1. bump allocator: aligned append-only allocation, no individual reuse;
2. free list without coalescing: reuse exact/large enough blocks, split blocks, but never merge;
3. free list with coalescing: merge adjacent free blocks on `deallocate()`.

The implementation records metadata, alignment, live requested bytes, live reserved bytes, free
payload bytes, largest free block, internal fragmentation and external fragmentation.

## What broke

The bump allocator intentionally fails after freeing individual allocations because `deallocate()`
does not move the bump pointer backward. That is not a bug; it is the design limitation.

The free-list variant without coalescing also fails the deliberate probe:

```text
allocate 240, 240, 240, 240
free middle two blocks
allocate 400
```

Total free payload exists, but without merging the two adjacent free blocks, no single free block is
large enough.

## Observation

The allocator lab emits:

```json
"intentional_failures": {
  "bump_cannot_reuse_free": true,
  "large_allocation_without_coalescing": false,
  "large_allocation_with_coalescing": true
}
```

`tests/differential_tests.cpp` then runs a fixed-seed randomized allocation/free workload and checks
that payloads remain aligned, live addresses are not duplicated, and a drained coalescing allocator
returns to one free arena block.

## Debugging / sanitizer note

My first plan was to run ASan+UBSan with leak detection enabled. On this MacBook Air, Apple clang
reported that leak detection is not supported, and ASan itself aborted inside
`sanitizer_malloc_mac`. I therefore recorded that limitation and ran UBSan-only checks instead.

UBSan-only `mastery_tests` and `differential_tests` pass. This is weaker than a full ASan run, so I
cannot claim AddressSanitizer coverage on this machine.

## Assembly bridge

I saved compiler output for the allocator lab:

```text
evidence/assembly/allocator-O0.s
evidence/assembly/allocator-O2.s
```

The `-O0` file is much larger because the compiler preserves more direct calls, stack traffic and
debug-friendly structure. The `-O2` file is smaller and inlines/removes more scaffolding. I am not
claiming full assembly fluency yet; I am using the generated files as a checkable bridge from C++ to
machine-level behavior.

## What I changed

I made coalescing explicit and measured it instead of merely saying fragmentation exists. I also
added property-style allocator tests so the allocator is not only a successful demo path.

## Remaining uncertainty

This allocator has no thread safety, no per-size bins, no mmap/sbrk growth, no quarantine, no guard
pages and no production hardening. It is a learning artifact for metadata, splitting, reuse,
alignment and coalescing.
