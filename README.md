# beneath-the-stack

**A product engineer reverse-engineering the abstractions he already uses.**

I started this project because frameworks made it possible to build useful software without always
having to look at what happened underneath. That is productive until the abstraction itself becomes
the thing I need to debug.

Why is this lookup fast? Why does this request block? Why can two workers claim the same job? Why
does an index help? What survives `fork()`? What does a file descriptor actually refer to? What
happens between a row object and bytes on disk?

Instead of replacing product work with a textbook checklist, `beneath-the-stack` uses the systems I
already built as questions. I implement the smallest useful version of an abstraction, test its
invariants, measure it, explain its failure modes, and—when the lesson is genuinely useful—take it
back to a real project.

```text
concept
  ↓
from-scratch implementation
  ↓
correctness / failure case
  ↓
benchmark / trace
  ↓
explanation
  ↓
real product application
```

This is not a coding-test solution archive and it is not a dashboard project. The browser UI is an
observer. The C++ implementations, POSIX experiments, tests and versioned evidence are the project.

## v0.2 — from labs to an evidence graph

v0.1 established six executable experiments. v0.2 keeps those and adds the missing bridges between
data structures, operating-system boundaries, memory layout, networking and persisted storage.

| Area | Evidence in v0.2 | Question it answers |
| --- | --- | --- |
| Data structures | custom dynamic array, linked list, stack, queue, BST, trie, union-find | What does the standard library normally own for me? |
| Hash / heap / graph | from-scratch implementations retained from v0.1 | Why do collision policy, priority ordering and traversal frontier shape matter? |
| OS boundary | real `fork`, `pipe`, `dup`, `waitpid`, `getpid` experiments | What is copied, shared, or represented by the kernel? |
| Memory | contiguous traversal vs pointer chasing; stack-frame vs heap-block touch | How can the same logical values have different machine costs? |
| Concurrency | lost-update, mutex, atomic + real atomic filesystem claim application | Where does a compound operation need one ownership boundary? |
| Networking | POSIX TCP, HTTP/1.1 parser, keep-alive, connection pool, receive timeout | What does a framework hide between request code and sockets? |
| Database internals | B+ tree plus 4 KiB pager, fixed-row serialization and index rebuild | How does `row → page → file → index lookup` fit together? |
| Embedded foundation | HAL interface + deterministic temperature/state-machine simulator | How can core logic be testable before physical hardware exists? |

The implementation inventory is intentionally smaller than a complete CS curriculum. A topic only
moves forward when an artifact exists; unfinished topics remain explicit in
[`progress/mastery.json`](progress/mastery.json).

## The systems core

```text
include/bts/
├── data_structures.hpp  dynamic array · linked list · stack · queue · BST · trie · union-find
├── hash_table.hpp       chaining · linear probing · load factor · resize
├── min_heap.hpp         binary min-heap
├── graph.hpp            BFS · DFS · path reconstruction
├── counter.hpp          lost-update · mutex · atomic
├── http.hpp             HTTP request-line/header parser
├── bplus_tree.hpp       B+ tree internal/leaf split · linked leaves
├── toy_storage.hpp      fixed rows · 4 KiB pager · persisted B+tree locations
├── embedded.hpp         HAL boundary · simulated output · thermal state machine
└── benchmark.hpp        warm-up · repeated samples · p50/p95 · mean/stddev
```

No third-party C++ data-structure or benchmark framework is required for these labs.

## Executable laboratories

Eleven binaries emit machine-readable JSON. `tools/run_labs.py` only orchestrates them; it does not
manufacture algorithm results.

```text
hash-table          collision / load-factor behavior
heap-scheduler      priority selection vs repeated linear minimum
graph-traversal     BFS / DFS path and frontier behavior
concurrency-race    lost updates vs mutex / atomic correctness
raw-http            parser / keep-alive / pool / timeout behavior
db-index            in-memory B+ tree lookup and range behavior
data-structures     array/list/BST/trie/union-find behavior
memory-locality     contiguous vs pointer-chasing memory access
process-fd          fork/process isolation/syscall/file-descriptor semantics
storage-engine      row serialization → pages → file → B+tree locations
embedded-simulator  simulated sensor event → state machine → digital output
```

## Evidence, not a leaderboard

Release evidence is captured on the MacBook Air with the compiler, flags, OS, hardware, input size,
warm-up and repetition counts stored next to the result. Each benchmark contains mean, standard
deviation, p50, p95, min and max. A normalized CSV is emitted alongside JSON so results can be
compared without scraping prose.

```bash
make -j2 all
make test
make lint

python3 tools/run_labs.py \
  --profile standard \
  --output evidence/v0.2-macbook-air.json \
  --csv-output evidence/v0.2-macbook-air.csv
```

See [`docs/BENCHMARKS.md`](docs/BENCHMARKS.md) for release observations and their limitations.
Numbers in this repository are workload-specific observations, not hardware-independent truths.

Selected v0.2 MacBook Air observations:

| Experiment | p50 |
| --- | ---: |
| Heap scheduler, 2,500 tasks | 0.135 ms |
| Repeated linear minimum, same tasks | 6.002 ms |
| HTTP new connection ×80 loopback requests | 4.340 ms |
| HTTP keep-alive ×80 | 1.204 ms |
| 200,000 contiguous value traversal | 0.054 ms |
| 200,000 linked pointer chase | 0.088 ms |
| 1,000,000 `getpid()` calls | 1.089 ms |
| 1,000,000 volatile cached PID loads | 0.272 ms |
| 300 page-backed sequential point queries / 4,000 rows | 33.320 ms |
| 300 B+tree → page/slot queries / same rows | 0.375 ms |

The evidence file points to source commit `8a6d49598a5237ea92410a36f36555218619d570` so the measured
code can be distinguished from later documentation/evidence commits.

Examples of claims this project deliberately **does not** make:

- a toy B+ tree is PostgreSQL;
- loopback HTTP latency is internet latency;
- one mutex/atomic counter benchmark determines a production synchronization strategy;
- a simulated HAL counts as physical GPIO experience;
- one contiguous-layout benchmark proves every linked structure is slow.

## Learned → implemented → measured → applied

Progress uses a six-level evidence contract rather than solved-problem count:

```text
0  Not Started
1  Explained
2  Implemented
3  Tested
4  Benchmarked
5  Applied to Real Project
```

Level 5 is intentionally difficult. A concept does not receive it because a toy demo exists. It
requires an artifact in another real repository. Current examples:

- **compound atomicity / ownership** → `browser-reliability-runtime`: competing workers now claim a
  file-backed job with filesystem `rename` as the ownership boundary, with a race regression test;
- **bounded memory retention** → `memory-atlas-server`: limited history reads retain only the last N
  lines instead of storing the entire file in memory.

The full ledger and artifact links live in [`progress/mastery.json`](progress/mastery.json).

## Existing software is part of the curriculum

The project does not copy old solutions into a new folder. It links different kinds of evidence:

```text
BFS
├── practice history / representative problems
├── from-scratch graph implementation
├── traversal benchmark
├── interview explanation
└── product/simulation connection
```

- [`docs/algorithm-patterns.md`](docs/algorithm-patterns.md) maps repeated problem patterns to the
  mechanism underneath them.
- [`docs/learning-history-map.md`](docs/learning-history-map.md) connects existing coding-study repos
  instead of duplicating their solutions.
- [`docs/applied-concepts.md`](docs/applied-concepts.md) maps CS concepts back to existing products.

This also records cases where applying a learned structure would be bad engineering. For example,
`elevator-queue-lab` has only six cars and dynamically changing dispatch scores, so replacing a
small scan with a heap merely to demonstrate a heap would add invalidation complexity without a
clear benefit.

## Source bridges, not forks

Toy implementations are compared to real systems without pretending to reproduce them.

[`docs/xv6-bridge.md`](docs/xv6-bridge.md) maps the POSIX process/FD labs to the corresponding xv6
areas—`proc.c`, `syscall.c`, `file.c`, `pipe.c`, `vm.c`, `spinlock.c` and `swtch.S`. Database and
networking references similarly use small educational systems such as `db_tutorial` and
`mini-redis` to locate the next abstraction boundary.

Classmate repositories are used for **problem selection and practice cadence**, not code copying.
Most surveyed algorithm repositories expose no explicit permissive license, so their implementation
code is not imported. The audit is in [`docs/REFERENCES.md`](docs/REFERENCES.md).

## Interview verification

Interview notes are not memorized answer sheets. Each topic must answer four questions from code and
evidence:

```text
1. What is it?
2. Why does it work?
3. When does it fail?
4. Where did I use it?
```

Current notes cover hash tables, heap/priority queues, BFS/DFS, concurrency, TCP/HTTP, B+ trees,
from-scratch data structures, process/file descriptors, memory locality, page-backed storage and the
embedded HAL simulator. See [`docs/interview/`](docs/interview/).

## Architecture rule: the UI is an oscilloscope

The visualization layer is intentionally thin:

```text
C++ / POSIX implementation
        ↓
test + benchmark + trace
        ↓
JSON evidence
        ↓
optional local observer
```

Deleting `dashboard/` must not remove any experiment. See
[`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md).

## What comes next

The next milestones go deeper before they go wider:

1. deadlock + wait-for graph + lock ordering;
2. allocator/free-list fragmentation and virtual-memory/page-touch experiments;
3. UDP/DNS and event-driven I/O (`kqueue`/`epoll`) bridge;
4. PostgreSQL `EXPLAIN (ANALYZE, BUFFERS)`, transaction/isolation, MVCC and WAL;
5. algorithm patterns still missing real mechanism labs: binary search, sorting, greedy,
   backtracking and dynamic programming;
6. compiler/architecture bridge: local `-O0` vs `-O2` assembly, stack frames, branches and cache;
7. physical Pico/ESP32/Arduino evidence only after a device is actually connected.

See [`docs/ROADMAP.md`](docs/ROADMAP.md).

## Quality bar

- C++20, `-Wall -Wextra -Wpedantic -Werror`;
- deterministic `system_tests` and `mastery_tests`;
- malformed/edge-case coverage for new structures and HTTP parsing;
- persistence close/reopen checks for the toy storage engine;
- `clang-format` gate;
- Makefile and CMake build paths;
- 11-lab quick smoke in CI;
- versioned JSON + CSV benchmark evidence;
- Ubuntu CI plus macOS/Apple-Silicon release measurements.

The repository itself is MIT licensed. External-source and classmate-study decisions are documented
explicitly rather than inferred from repository visibility.
