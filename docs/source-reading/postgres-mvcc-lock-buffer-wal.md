# PostgreSQL source bridge: planner output to storage/concurrency internals

Local reference tree:

```text
../_systems-reference/postgres
commit 25b21c0bb712b615f22cf5fcc176764a416368bd
```

This is intentionally narrow source reading. The goal is to connect the v0.7 reality script to a few
PostgreSQL implementation paths, not to claim complete PostgreSQL internals mastery.

## B-tree scan

Relevant paths:

- `src/backend/access/nbtree/nbtree.c`: access-method handler table wires `.amgettuple` to
  `btgettuple`.
- `src/backend/access/nbtree/nbtree.c`: `btgettuple(IndexScanDesc scan, ScanDirection dir)` returns
  the next visible index item to the executor.
- `src/backend/access/nbtree/nbtsearch.c`: search helpers prepare leaf-page scan positions.

Connection to this repo:

- `include/bts/bplus_tree.hpp` explains ordered leaf traversal and point lookup.
- PostgreSQL adds MVCC visibility, locks, buffer pins, scan direction, vacuum interactions and WAL.

## Heap tuple visibility

Relevant paths:

- `src/backend/access/heap/heapam.c`: heap scan helpers advance blocks and tuples.
- `src/backend/access/heap/heapam_visibility.c`: `HeapTupleSatisfiesMVCC` decides whether a tuple is
  visible to a snapshot.

Reality script connection:

- transaction A updates a row and sleeps before commit;
- transaction B reads the same row before commit and still observes the old value;
- after commit, transaction B observes the new value.

The toy storage engine has rows and pages, but not tuple versions or snapshots. v0.7 therefore keeps
MVCC as real PostgreSQL evidence rather than retrofitting a fake MVCC claim into the toy engine.

## Buffer manager

Relevant paths:

- `src/backend/storage/buffer/bufmgr.c`: `ReadBuffer_common` is the shared path behind several buffer
  read variants.
- `src/include/storage/bufmgr.h`: public buffer manager interface.

Reality script connection:

- `EXPLAIN (ANALYZE, BUFFERS, FORMAT JSON)` exposes shared hit/read/dirtied/written block counts.
- The toy pager directly reads and writes 4 KiB pages; PostgreSQL goes through a shared buffer
  manager with pins, locks and replacement policy.

## Lock wait and deadlock

Relevant paths:

- `src/backend/storage/lmgr/proc.c`: `ProcSleep` is part of the lock-wait path.
- `src/backend/storage/lmgr/README`: documents lock acquisition and deadlock-checking rules.
- `src/backend/tcop/postgres.c`: query execution paths set flags so `ProcSleep` checks for deadlocks.

Reality script connection:

- a second transaction updating an already locked row fails under a short `lock_timeout`;
- two transactions updating two rows in opposite order trigger deadlock detection and PostgreSQL
  aborts one side.

This is the real-system version of the capstone invariant “one active owner,” but with transaction
locks and a deadlock detector rather than a single-process mutex.

## WAL

Relevant paths:

- `src/backend/access/transam/xloginsert.c`: WAL record insertion plumbing.
- `src/backend/access/transam/xlog.c`: `XLogInsertRecord` and WAL buffer comments.

Reality script connection:

- it records `pg_current_wal_lsn()` before and after an update workload;
- `pg_wal_lsn_diff()` confirms the WAL position advanced.

The capstone journal is append-only and checksum-protected, but it is not PostgreSQL WAL. The bridge
is conceptual: durable state changes need replayable records, but PostgreSQL has a much richer
physical/logical logging and recovery model.

