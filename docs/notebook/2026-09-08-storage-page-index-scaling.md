# 2026-09-08 — storage page/index notebook

## Question

What changes when an index points to a persisted page/slot instead of an in-memory object?

## My prediction

Sequential scan should grow with rows because it repeatedly reads pages and checks rows. Indexed
lookup should grow much more slowly, but the toy index rebuild after reopen should still require a
full scan because the index is not persisted.

## Source reading

I cloned PostgreSQL and looked narrowly at:

- `src/backend/storage/buffer/bufmgr.c`: buffer manager entry points such as `ReadBuffer`;
- `src/include/storage/bufmgr.h`: buffer interface declarations;
- `src/backend/access/nbtree/nbtinsert.c`: B-tree insert paths, `_bt_split`, parent insertion and
  page free-space checks.

## Implementation

v0.2 already had:

```text
fixed row → 4 KiB page → file-backed pager → B+tree id → page/slot
```

v0.3 adds split counters on the toy B+ tree and records the random query seed. The benchmark runner
now includes enough metadata to compare repeated runs without scraping prose.

## What broke

The most important limitation is now visible: the B+ tree locations are rebuilt by scanning all
persisted pages at open time. That is acceptable for a toy engine, but it is exactly the kind of
trade-off a real database avoids with persisted indexes, WAL, checksums and buffer management.

## Observation

The storage lab reports:

- row size;
- page size;
- rows per page;
- data page count;
- index height;
- leaf/internal split count;
- index rebuild time;
- sequential point lookup time;
- B+tree → page/slot lookup time.

## Explanation

The toy index is useful because it separates two costs: finding a row location and loading a page.
The in-memory B+ tree makes location search cheap, but every returned location still has to be
materialized from a page. This is closer to a storage-system question than a pure data-structure
benchmark.

## Remaining uncertainty

I have not implemented a persisted B+tree page format, free page map, crash recovery, MVCC,
concurrency control or PostgreSQL `EXPLAIN (ANALYZE, BUFFERS)` against one of my deployed services
yet.
