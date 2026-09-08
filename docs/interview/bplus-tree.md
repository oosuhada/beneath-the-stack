# B+ tree / database index

## 30-second explanation

A B+ tree keeps sorted separator keys in internal nodes and actual key/value entries in leaves. Wide
nodes reduce tree height, while linked leaves make ordered range scans efficient. Databases use this
family of structure because it maps well to page-oriented storage and supports both point and range
queries. This repository implements a toy in-memory version and compares repeated point lookup with a
sequential record scan.

## 2-minute explanation

A binary search tree can become tall and pointer-heavy. A B+ tree increases fan-out: one internal node
contains many separator keys and child pointers. Searching chooses one child per level, so a large key
set can remain only a few levels deep.

When a leaf overflows, the lab splits it and promotes the first key of the new right leaf as a
separator. Internal-node overflow can recursively split toward the root. Leaves are linked so a range
query finds the first matching leaf once and then walks forward rather than repeatedly restarting from
the root.

The benchmark demonstrates the read-side motivation but also records index build cost. A real database
must additionally manage fixed-size pages, WAL/recovery, concurrent writers, MVCC visibility, cache
behavior, fill factor and durable storage. Those are roadmap work, not implied by this toy index.

## Explain it from code

- `include/bts/bplus_tree.hpp` — leaf/internal split logic, point lookup, linked range scan.
- `labs/db_index/main.cpp` — randomized row fixture, index build and scan comparison.

## Trade-off questions

- Why do B+ trees keep data in leaves instead of every internal node?
- Why is high fan-out useful on page/block storage?
- What write cost is introduced by maintaining an index?
- When can PostgreSQL prefer a sequential scan even though an index exists?
- Why are benchmark results from an in-memory toy B+ tree not PostgreSQL performance results?

## Product-engineering connection

At application level it is easy to add an ORM index annotation and stop there. The systems question is
what access path the database is buying: fewer pages/rows examined for selective queries in exchange
for storage and write maintenance. v0.3 will connect this lab to real PostgreSQL
`EXPLAIN (ANALYZE, BUFFERS)` evidence rather than pretending the toy tree is PostgreSQL.

## Evidence check

Use both numbers: index lookup latency **and index build latency**. If only the faster read is cited,
the explanation is incomplete.

