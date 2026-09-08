# Architecture

## Design rule

The project has one hard boundary:

> An observer may display an experiment, but it may not become the source of the experiment's truth.

That prevents a familiar web-development failure mode where a polished dashboard eventually hides
that the underlying exercise is static, mocked or not reproducible.

## Layers

### 1. Systems core — `include/bts/`

Reusable implementations written in C++20:

- `hash_table.hpp` — chained and linear-probe hash tables;
- `min_heap.hpp` — binary min-heap;
- `graph.hpp` — adjacency-list graph + BFS/DFS/path reconstruction;
- `counter.hpp` — synchronization experiment primitives;
- `bplus_tree.hpp` — toy in-memory B+ tree;
- `benchmark.hpp` — repeated timing summary;
- `json.hpp` — dependency-free result serialization helpers;
- `cli.hpp` — minimal experiment argument parsing.

The structures do not depend on the dashboard or Python runner.

### 2. Executable labs — `labs/`

Each lab answers one concrete question and emits one JSON object to stdout. This makes it possible to
run the C++ experiment directly, pipe it somewhere else, or aggregate it without coupling the core to
a web server.

```text
labs/hash_table       collision/load-factor behavior
labs/heap_scheduler   dynamic priority selection
labs/graph_traversal  traversal/path/frontier behavior
labs/concurrency_race compound-operation synchronization
labs/raw_http         TCP + HTTP/1.1 connection reuse
labs/db_index         B+ tree lookup/range/index cost
```

### 3. Evidence runner — `tools/run_labs.py`

The runner invokes the binaries, parses their JSON, attaches machine/compiler metadata and emits a
single evidence document. It has two profiles:

- `quick` — CI/smoke scale;
- `standard` — local release evidence scale.

The runner intentionally does not calculate the algorithm result or benchmark inside Python.

### 4. Observer — `dashboard/`

Static HTML/CSS/JavaScript reads `dashboard/data/latest.json` and renders:

- collision distribution;
- scheduler order;
- BFS/DFS maze traversal;
- race correctness/timing;
- connection reuse timing;
- sequential scan versus B+ tree timing.

Deleting the dashboard does not remove any experiment capability.

## Benchmark contract

Every benchmark function follows:

```text
warm-up N times
→ sample M repeated wall-clock durations using steady_clock
→ mean / stddev / p50 / p95 / min / max
→ emit environment with the aggregate run
```

The numbers are deliberately not normalized into a synthetic score. Each comparison remains tied to
its exact workload and machine.

### What the benchmarks do not prove

- They do not establish universal superiority of a data structure.
- Loopback TCP is not internet latency.
- The B+ tree is an educational in-memory index, not PostgreSQL's storage engine.
- Scheduler tasks are synthetic and do not model an OS kernel scheduler.
- The counter benchmark compares one narrow workload and is not a general mutex/atomic rule.

## Test boundary

`tests/system_tests.cpp` tests deterministic invariants:

- hash lookup/update/resize survival;
- heap ordering;
- BFS/DFS reachability and shortest-path reconstruction;
- randomized B+ tree insertion, lookup and linked-leaf range scan;
- exact mutex and atomic counter outcomes;
- benchmark summary invariants.

The intentionally race-shaped split load/store outcome is only constrained not to exceed the intended
increment count; it is not expected to produce one deterministic wrong number.

## Portability

The algorithm/data-structure labs are standard C++20. The raw HTTP lab uses POSIX sockets and is
therefore targeted at macOS/Linux in v0.1. CI runs on Ubuntu, while the release evidence is captured
on macOS/Apple Silicon.

