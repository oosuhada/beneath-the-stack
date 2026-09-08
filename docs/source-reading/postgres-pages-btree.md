# Source reading — PostgreSQL pages, buffers and B-tree insertion

Source: local clone of `postgres/postgres` at `_systems-reference/postgres`.

## Question

How far is my toy `row → page → B+tree location` model from a real database?

## Relevant files/functions read

| Topic | PostgreSQL file/function area | Toy implementation |
| --- | --- | --- |
| buffer/page access | `src/backend/storage/buffer/bufmgr.c`, `src/include/storage/bufmgr.h` | `bts::Pager::read_page`, `write_page` |
| B-tree insert | `src/backend/access/nbtree/nbtinsert.c` | `BPlusTree::insert` |
| split | `_bt_split`, `_bt_insert_parent`, `_bt_newlevel` | `split_leaf`, `split_internal` |
| page space | `PageGetFreeSpace`, `PageAddItem` related paths | fixed 128-byte row slots |

## What the code appears to do

PostgreSQL routes page access through a buffer manager. B-tree insertion is not just “put key in
node”; it reasons about page free space, buffers, locks, parent insertion, new levels, duplicate
handling, concurrency and WAL-visible changes.

My toy database has a fixed page size and fixed-width rows, then keeps the index in memory. It is
useful for understanding why a key can map to a page/slot, but it skips most of what makes
PostgreSQL durable and concurrent.

## Important differences

- PostgreSQL persists index pages; the toy index is rebuilt by scanning data pages on open.
- PostgreSQL has a buffer manager, replacement policy, locks and WAL; the toy pager directly reads
  and writes file offsets.
- PostgreSQL tuples are not fixed 128-byte records with naive string fields.
- PostgreSQL’s B-tree handles concurrency, splits, deduplication and recovery concerns that the toy
  tree does not attempt.

## What I still do not understand deeply

- The exact WAL records for B-tree page splits.
- Buffer replacement and dirty page flushing behavior under load.
- How PostgreSQL planner cost estimates connect to actual `EXPLAIN (ANALYZE, BUFFERS)` in my own
  services.
