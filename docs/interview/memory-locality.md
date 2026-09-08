# Allocation and memory locality

## 1. What is it?

Memory layout is part of algorithm cost. Two containers can both expose O(n) traversal while one
walks adjacent cache-friendly addresses and the other follows separately allocated pointers.

## 2. Why does it work?

The CPU fetches memory in cache-line-sized regions, so nearby future reads can arrive with the first
read. A contiguous array exploits spatial locality naturally; linked nodes may require unrelated
cache lines and pointer-dependent loads. Stack allocation can also avoid a heap allocator call for
small fixed-lifetime storage.

Code: `labs/memory_locality/main.cpp`.

## 3. When does it fail?

- “Vector is faster” is not a theorem: insertion/removal pattern, object size, allocator and cache
  state all matter.
- Microbenchmarks are easily optimized away. This lab explicitly uses observable memory access and
  rejected its first near-zero result.
- Stack storage is finite; large/variable objects belong elsewhere.

## 4. Where did I use it?

The release inspected C++ `memory-atlas-server` rather than inventing a synthetic product link. Its
limited history read retained every file line before slicing the tail. The applied change bounds
retained history to N entries for `limit > 0`; this is a memory-footprint/data-structure improvement,
not a claim that the server is now cache-optimized.

