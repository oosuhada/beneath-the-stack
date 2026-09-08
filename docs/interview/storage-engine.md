# Page-backed toy storage engine

## 1. What is it?

The v0.2 toy table turns logical rows into fixed 128-byte records, packs 32 records into a 4 KiB
page, persists pages to a file and keeps an in-memory B+ tree from row id to `(page, slot)`.

## 2. Why does it work?

The index narrows a point lookup to a key search plus one page location instead of scanning rows on
every data page. Linked B+ tree leaves preserve ordered range access. Reopening the file rebuilds the
ephemeral index from persisted row pages, making the persistence boundary explicit.

Code: `include/bts/toy_storage.hpp`, `labs/storage_engine/main.cpp`.

## 3. When does it fail?

- The format has fixed fields, no deletion, no free-page map, no crash recovery and no WAL.
- The index itself is not persisted; startup rebuild is deliberate technical debt.
- Small tables or highly sequential workloads can make a scan competitive.
- This is not PostgreSQL and its benchmark is not a PostgreSQL performance claim.

## 4. Where did I use it?

The next real-product gate is to capture `EXPLAIN (ANALYZE, BUFFERS)` for a PostgreSQL-backed service
and compare page/index/scan reasoning with an actual query plan. Until that artifact exists, this
concept remains level 4 rather than level 5.

