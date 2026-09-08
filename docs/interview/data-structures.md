# Data structures from scratch

## 1. What is it?

The v0.2 library implements storage/relationship policies that standard containers normally hide:
a dynamically reallocated contiguous array, pointer-linked list, LIFO stack, FIFO queue, ordinary
BST, prefix trie and disjoint-set union.

## 2. Why does it work?

- Dynamic arrays over-allocate so many appends avoid allocation; occasional growth copies/moves the
  existing elements into a larger contiguous block.
- Linked lists make adjacency between elements explicit with pointers instead of physical contiguity.
- BST lookup discards one ordered subtree at each step only while the ordering invariant is healthy.
- Trie lookup consumes one character/edge at a time; shared prefixes share nodes.
- Union-find makes a forest shallower with union-by-rank and path compression.

Code: `include/bts/data_structures.hpp`; experiment: `labs/data_structures/main.cpp`.

## 3. When does it fail?

- A sorted insertion stream makes this unbalanced BST height O(n); the lab records that degeneration.
- Linked structures can trade easy insertion for allocation overhead and poor locality.
- A fixed 26-child trie wastes space for sparse alphabets and rejects non-lowercase ASCII by design.
- Dynamic-array reallocation invalidates addresses/iterators into the old storage.

## 4. Where did I use it?

The concrete transfer in this release is not “replace every vector.” The memory/layout experiment
was used to inspect `memory-atlas-server` history retention; the actual product fix is a bounded tail
container for limited history loads. See `docs/applied-concepts.md`.

