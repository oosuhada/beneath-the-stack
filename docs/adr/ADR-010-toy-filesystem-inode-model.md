# ADR-010: Model path lookup with directory entries and inode-like metadata

## Context

The previous storage engine explained rows, pages and B+tree locations. It did not explain how a
filesystem path becomes metadata and blocks, or why path identity differs from open-file identity.

## Options

1. Add a production-like filesystem.
2. Only document xv6 source.
3. Build a deliberately tiny in-memory filesystem model with absolute paths, directory entries,
   inode-like metadata, hard links and fixed-size blocks.

## Decision

Choose option 3.

## Trade-offs

- It does not implement permissions, crash recovery, free block maps, rename atomicity or journaling.
- It does make the path -> directory entry -> inode -> blocks relationship executable and testable.
- It also creates a small but real lifetime bug surface: vector-backed inode storage can invalidate
  references if used carelessly.

## Evidence

- `include/bts/toy_filesystem.hpp`
- `labs/toy_filesystem/main.cpp`
- `tests/mastery_tests.cpp`
- `docs/source-reading/xv6-filesystem.md`
