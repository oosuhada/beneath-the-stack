# Architecture

## One hard boundary

> The observer may display an experiment, but it may not become the source of the experiment's
> truth.

The repository is organized so the web layer can be deleted without deleting any CS evidence.

```text
from-scratch / POSIX core
        ↓
deterministic tests
        ↓
executable experiment
        ↓
benchmark / trace
        ↓
versioned JSON + CSV
        ↓
optional observer
```

## 1. Core mechanisms — `include/bts/`

- `data_structures.hpp` — custom dynamic array, linked list, stack, queue, BST, trie, union-find;
- `hash_table.hpp` — chaining and linear-probe hash tables;
- `min_heap.hpp` — binary min-heap;
- `graph.hpp` — adjacency-list graph, BFS/DFS and path reconstruction;
- `counter.hpp` — logical lost-update, mutex and atomic counter primitives;
- `http.hpp` — dependency-free HTTP request-line/header parser;
- `bplus_tree.hpp` — in-memory B+ tree with linked leaves;
- `toy_storage.hpp` — fixed-size row serialization, 4 KiB pager and persisted B+tree locations;
- `embedded.hpp` — HAL boundary, deterministic simulated output and thermal state machine;
- `benchmark.hpp`, `json.hpp`, `cli.hpp` — experiment infrastructure.

Core structures do not import the dashboard or Python runner.

## 2. Executable labs — `labs/`

Each binary answers one narrow systems question and prints one JSON object. There are eleven in
v0.2:

```text
hash_table        collision/load-factor/resize behavior
heap_scheduler    dynamic priority selection
graph_traversal   BFS/DFS frontier and path behavior
concurrency_race  compound atomicity and coordination cost
raw_http          parser/reuse/pool/timeout behavior on POSIX TCP
db_index          in-memory B+tree lookup/range behavior
data_structures   layout and failure behavior of foundational structures
memory_locality   contiguous vs pointer-chasing access and allocation shape
process_fd        fork/process/pipe/dup/syscall behavior
storage_engine    fixed row → page → file → index-location lookup
embedded_sim      simulated event → state transition → digital output
```

The OS/network labs are intentionally POSIX-oriented and therefore target macOS/Linux. This is
documented as an OS-specific experiment, not portable language semantics.

## 3. Test boundary

Two deterministic suites separate old invariants from the v0.2 expansion:

- `tests/system_tests.cpp` — hash/heap/graph/B+tree/concurrency/benchmark invariants;
- `tests/mastery_tests.cpp` — dynamic-array lifetime/copy/move, list/stack/queue/BST/trie/union-find,
  malformed HTTP parsing, persisted storage close/reopen/index equality, and embedded hysteresis.

The intentionally wrong split-load/store counter is not required to return one fixed incorrect
number. Its individual accesses are defined atomic operations; the experiment demonstrates lost
updates caused by the compound operation not being atomic.

## 4. Evidence runner — `tools/run_labs.py`

The runner executes binaries and adds provenance:

- hardware model and memory;
- OS/release/architecture;
- compiler and compile flags;
- Python version used for orchestration;
- source Git commit;
- benchmark warm-up/repetitions plus p50/p95/mean/stddev/min/max.

`quick` is CI/smoke scale. `standard` is the MacBook Air release profile. Release artifacts are saved
as both JSON and normalized CSV.

The runner may aggregate evidence but may not reimplement an algorithm in Python.

## 5. Observer — `dashboard/`

The static observer reads generated JSON. v0.2 does not grow the UI in proportion to lab count; the
priority is implementation/test/evidence. Missing visual cards are not missing experiments.

## Storage-engine boundary

The v0.1 B+ tree was an in-memory index. v0.2 separates logical index structure from persisted row
placement:

```text
ToyRow
  ↓ serialize (128 bytes)
4 KiB page
  ↓ pager
file
  ↑ page,slot
B+tree id index
```

The index is rebuilt by scanning persisted rows after reopen. This is deliberately simpler than a
production database: no free-page map, WAL, crash recovery, MVCC, variable tuples or persisted index
pages are claimed.

## Product-application boundary

`docs/applied-concepts.md` is a separate layer because a lab scenario is not automatically a real
application. Mastery level 5 requires evidence outside this repository. Current examples are the
atomic file-queue claim in `browser-reliability-runtime` and bounded history retention in
`memory-atlas-server`.

## Source-study bridge

Toy systems are connected to source locations rather than copied/forked. `docs/xv6-bridge.md` maps
process, syscall, FD, pipe, VM, lock and context-switch questions to xv6 files. The same principle is
used for database/networking/embedded references in `docs/REFERENCES.md`.

## Benchmark contract

Every timed result follows:

```text
warm-up N
→ sample M wall-clock durations with steady_clock
→ mean / stddev / p50 / p95 / min / max
→ persist exact environment + workload
```

Compiler-eliminated work is invalid evidence. The memory-locality lab already caught this during
development: an initial near-zero result was discarded and the access path was changed so observable
memory loads/touches remain in the timed region.

## What this architecture does not claim

- toy storage is not PostgreSQL;
- the HTTP parser is not a production RFC implementation;
- a deterministic HAL simulator is not physical embedded experience;
- loopback networking is not internet networking;
- synthetic scheduler tasks are not an OS kernel scheduler;
- v0.2 is not a complete CS curriculum.
