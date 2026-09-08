# v0.1 benchmark evidence

This document freezes one release measurement from the MacBook Air so the README can point to
concrete evidence without presenting local microbenchmarks as universal performance claims.

## Environment

| Field | Value |
| --- | --- |
| Captured | 2026-09-08 09:40:28 UTC / 2026-09-08 18:40:28 KST |
| Machine | `Mac15,13` |
| Architecture | `arm64` |
| Memory | 25,769,803,776 bytes |
| OS | Darwin 27.0.0 |
| Compiler | Apple clang 16.0.0 (`clang-1600.0.26.3`) |
| Python runner | 3.14.6 |
| Build | C++20, `-O2 -Wall -Wextra -Wpedantic -Werror -pthread` |

The release snapshot is also stored as
[`evidence/v0.1-macbook-air.json`](../evidence/v0.1-macbook-air.json).

## Method

Each executable owns its workload and emits measurements directly. `tools/run_labs.py` only invokes
the binaries and adds environment metadata.

```text
deterministic fixture / seeded input
→ configured warm-up runs
→ repeated steady_clock samples
→ mean / stddev / p50 / p95 / min / max
```

Different labs intentionally use different workloads. Their milliseconds should not be compared
across lab boundaries as if they formed one score.

## Results

### 1. Hash table — 20,000 keys

Warm-up: 3. Repetitions: 15.

| Strategy / operation | p50 | p95 | Structural evidence |
| --- | ---: | ---: | --- |
| Separate chaining insert | 3.131 ms | 4.092 ms | load factor 0.610; max chain 6 |
| Separate chaining lookup of all keys | 0.607 ms | 0.643 ms | bucket chain histogram `[17827, 10808, 3330, 691, 102, 9, 1]` |
| Linear probing insert | 2.484 ms | 2.513 ms | load factor 0.610; longest occupied cluster 56 |
| Linear probing lookup of all keys | 0.693 ms | 0.715 ms | contiguous probe sequence |

The useful result is not that one collision strategy “wins.” At the same observed load factor, the
two policies create visibly different collision structures. The lab makes those structures
inspectable so lookup cost can be discussed together with load and clustering.

### 2. Binary heap scheduler — 2,500 tasks

Warm-up: 2. Repetitions: 10.

| Selection strategy | p50 | p95 |
| --- | ---: | ---: |
| Binary min-heap | 0.233 ms | 0.245 ms |
| Repeated linear minimum scan | 5.709 ms | 7.490 ms |

For this dynamic-priority workload, the repeated linear-min baseline took about **24.5×** the p50
time of the heap. This is a workload-specific illustration of why preserving a partial heap order is
useful when the operation repeated is “give me the next priority item,” not a claim that a heap
replaces sorting for every task.

### 3. BFS / DFS — deterministic 120 × 120 grid

Warm-up: 3. Repetitions: 20.

| Traversal | p50 | p95 |
| --- | ---: | ---: |
| BFS | 0.086 ms | 0.089 ms |
| DFS | 0.075 ms | 0.080 ms |

The separate 12 × 10 visualization fixture recorded a BFS peak frontier of **9 nodes** and a DFS
peak frontier of **32 nodes**. That specific result is intentionally not generalized into “BFS uses
more memory” or “DFS uses less memory.” Frontier shape depends on graph topology and traversal order.
What BFS earns is the unweighted shortest-path guarantee; what DFS earns is a different exploration
shape.

### 4. Race / mutex / atomic — 8 threads × 100,000 intended increments

Warm-up: 1. Repetitions: 6.

Expected final count: **800,000**.

| Strategy | Observed count in release run | p50 | p95 | Correct? |
| --- | ---: | ---: | ---: | --- |
| Split atomic load → compute → store | 138,209 | 0.769 ms | 0.798 ms | **No — lost updates** |
| Mutex-protected increment | 800,000 | 15.524 ms | 15.818 ms | Yes |
| Atomic `fetch_add` | 800,000 | 13.734 ms | 14.661 ms | Yes |

The fastest row is deliberately the wrong implementation. It completed less useful work because
updates were overwritten. This is why timing is reported beside correctness rather than above it.

The split variant uses `std::atomic` for the individual loads/stores, so the experiment demonstrates
a logical race without intentionally invoking undefined behavior from a C++ plain-data data race.
The wrong count is nondeterministic and is expected to change between runs.

### 5. Raw TCP / HTTP/1.1 — 80 requests per run

Warm-up: 2. Repetitions: 8. Four clients are used for the concurrent case. All traffic stays on the
loopback interface.

| Connection policy | p50 | p95 |
| --- | ---: | ---: |
| New TCP connection for every request | 4.211 ms | 5.304 ms |
| HTTP/1.1 keep-alive | 1.196 ms | 1.230 ms |
| Four concurrent keep-alive clients | 0.468 ms | 0.550 ms |

On this loopback workload, opening a new TCP connection per request took about **3.5×** the p50 time
of reusing one keep-alive connection. This measures local connection/setup overhead only. It is not
an internet-latency, TLS or production-throughput claim.

### 6. B+ tree index — 12,000 rows / 600 point queries

Order: 32. Tree height after build: 3. Leaf nodes: 556. Warm-up: 2. Repetitions: 10.

| Operation | p50 | p95 |
| --- | ---: | ---: |
| Build the B+ tree index | 0.890 ms | 0.955 ms |
| 600 point queries by sequential scan | 0.922 ms | 0.950 ms |
| 600 point queries through B+ tree | 0.015 ms | 0.024 ms |

For this in-memory fixture, the sequential-scan p50 was about **59.9×** the indexed lookup p50. The
read gain is reported with the **0.890 ms index-build p50** because an index is maintained structure,
not free speed. The range scan from key 4000 through 4024 returned all 25 records through linked
leaves.

This is an educational in-memory B+ tree, not PostgreSQL. Page I/O, cache residency, WAL, MVCC,
locking, fill factor, planner selectivity and durable writes are not modeled in v0.1.

## Corrections found while measuring

The benchmark process changed the implementation twice before this release snapshot was accepted:

1. the first sequential-scan baseline was too easy for the optimizer to eliminate; the final lab
   places the scan behind a no-inline lookup boundary so the record traversal is actually measured;
2. the first iterative DFS marked nodes visited on pop, allowing duplicate frontier entries. It now
   marks discovery on push, making the recorded stack frontier represent the algorithm being taught.

The second correction also exposed a build-system problem: the first Makefile targets depended only
on `.cpp` files, so a header edit could leave a stale binary. Every executable now depends on the
project headers as well.

These corrections are part of the evidence philosophy: a surprising number is a reason to inspect
the experiment, not a reason to publish it faster.

## Reproduce

```bash
make -j2 all
make test
python3 tools/run_labs.py --profile standard
```

For dashboard data:

```bash
python3 tools/run_labs.py --profile standard --dashboard-data
python3 -m http.server 8080 -d dashboard
```

