# ADR-005: Why the toy allocator implements coalescing

## Context

A bump allocator explains alignment and fast sequential allocation, but it hides the harder
question: what happens after `free()`?

## Options

1. Keep only a bump allocator.
2. Add a free list without splitting/coalescing.
3. Add splitting and optional coalescing so failure can be demonstrated.

## Decision

Implement a free-list allocator with splitting and configurable coalescing.

## Trade-offs

- More metadata and pointer manipulation than a bump allocator.
- Easier to write bugs such as double-free corruption.
- Still far smaller than a production allocator.

## Evidence

- `include/bts/allocator.hpp`
- `labs/allocator/main.cpp`
- `tests/mastery_tests.cpp`
- `tests/differential_tests.cpp`
- `docs/notebook/2026-09-08-allocator-fragmentation.md`
