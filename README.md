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

## v0.3 — from examples to investigations

v0.3 is not a topic-expansion sprint. It records the work that is harder to fake: predictions,
source reading, intentional failures, sanitizer/assembly limits, differential tests and product
changes.

```text
Read the real implementation.
Predict what should happen.
Build the smallest version yourself.
Break it deliberately.
Observe what actually happened.
Explain why.
Apply the lesson to real software.
```

New v0.3 evidence lives below the README rather than inside marketing copy:

- [`docs/AI_TRANSPARENCY.md`](docs/AI_TRANSPARENCY.md) explains how AI assistance is treated as a
  tool, not as proof of understanding.
- [`docs/notebook/`](docs/notebook/) records allocator, OS/pipe, networking and storage
  investigations as engineering notebooks.
- [`docs/source-reading/`](docs/source-reading/) maps toy experiments to narrowed xv6 and
  PostgreSQL source reading.
- [`docs/algorithm-defense.md`](docs/algorithm-defense.md) records why patterns are chosen and which
  tempting alternatives fail.
- `labs/algorithm_defense/main.cpp` measures binary search vs linear search, shows BFS failing on a
  weighted shortest path, detects a topological cycle, and counts naive vs memoized Fibonacci calls.
- `tests/differential_tests.cpp` compares custom heap/hash/B+tree behavior against standard-library
  references and fuzzes allocator invariants.

## v0.4 — user-space calls meeting kernel-facing behavior

v0.4 narrows the project around OS internals. The goal is not to say “I studied operating systems,”
but to trace what happens when a user-space program crosses into kernel-maintained abstractions.

```text
user-space call
  -> libc / syscall boundary
  -> process descriptor table or VM mapping
  -> kernel object model from xv6 source
  -> observable POSIX behavior
```

New v0.4 evidence:

- `labs/os_boundary/main.cpp` observes fd identity, COW-style fork divergence, read-vs-mmap access,
  `write+close` vs `write+fsync+close`, and thread/process context-switch proxies.
- `labs/scheduler/main.cpp` compares FIFO, round-robin, non-preemptive priority and
  shortest-job-first on the same convoy workload.
- `labs/toy_filesystem/main.cpp` models `path -> directory entry -> inode-like metadata -> blocks`.
- [`docs/source-reading/xv6-syscall-path.md`](docs/source-reading/xv6-syscall-path.md),
  [`xv6-scheduler.md`](docs/source-reading/xv6-scheduler.md),
  [`xv6-virtual-memory.md`](docs/source-reading/xv6-virtual-memory.md) and
  [`xv6-filesystem.md`](docs/source-reading/xv6-filesystem.md) trace only the xv6 files/functions
  needed for the selected questions.
- [`docs/notebook/2026-09-08-os-kernel-boundary.md`](docs/notebook/2026-09-08-os-kernel-boundary.md)
  records wrong predictions and implementation bugs instead of hiding them.
- [`docs/debugger-assembly.md`](docs/debugger-assembly.md) records the LLDB limitation, `sample`
  trace and `-O0`/`-O2` assembly bridge.

## v0.5 — simulator-first firmware boundary

v0.5 moves one layer below OS/device APIs without pretending hardware exists. A safe probe found no
Pico, ESP32, Arduino or USB serial device on the MacBook Air, so this track uses deterministic
simulator-first firmware architecture and explicitly makes **no physical MCU measurement claim**.

```text
OS/device API
  -> HAL seam
  -> bounded serial/sensor buffers
  -> state machine / scheduler / protocol parser
  -> injected fault
  -> measured recovery behavior
```

New v0.5 evidence:

- `include/bts/firmware.hpp` implements a firmware-core model: ring buffer, framed serial protocol,
  polling-vs-event latency, cooperative scheduler, simulated MMIO and sensor→actuator control logic.
- `labs/firmware_boundary/main.cpp` injects checksum corruption, oversized payloads, packet timeout,
  queue overflow, stale/invalid sensor input and a long-running scheduler task.
- [`docs/notebook/2026-09-09-firmware-boundary.md`](docs/notebook/2026-09-09-firmware-boundary.md)
  records the actual hardware probe, incorrect first capstone/scheduler fixtures and measurements.
- [`docs/source-reading/freertos-task-queue.md`](docs/source-reading/freertos-task-queue.md) and
  [`mcu-hal-gpio-timer-serial.md`](docs/source-reading/mcu-hal-gpio-timer-serial.md) connect the toy
  firmware model to narrowed FreeRTOS, Pico, ESP-IDF and Arduino source-reading.
- [`docs/product-bridges/ibridge-device-boundary.md`](docs/product-bridges/ibridge-device-boundary.md)
  connects the same timing/buffer/protocol/state-machine questions to the iBridge Studio display
  pipeline without claiming it is MCU firmware.

## v0.6 — cross-layer capstone

v0.6 stops expanding the topic list and connects the existing layers into one small defended system:
`durable-job-runtime`.

```text
TCP client
  -> binary frame / parser
  -> idempotency index
  -> bounded priority queue
  -> worker ownership
  -> append-only journal
  -> recovery replay
  -> queryable state
```

The defended claims are intentionally specific: duplicate request IDs map to one logical job, a full
queue rejects new distinct work before writing an accepted record, a `RUNNING` job is retried after
restart, corrupt/truncated journal tails do not mutate state, and partial TCP reads are assembled
through a bounded buffer before parsing.

See [`docs/capstone/durable-job-runtime.md`](docs/capstone/durable-job-runtime.md),
[`docs/defense/`](docs/defense/), [`docs/audit/v0.6-mastery-audit.md`](docs/audit/v0.6-mastery-audit.md)
and [`EVIDENCE.md`](EVIDENCE.md).

## v0.2 — from labs to an evidence graph

v0.1 established six executable experiments. v0.2 keeps those and adds the missing bridges between
data structures, operating-system boundaries, memory layout, networking and persisted storage.

| Area | Evidence in v0.2 | Question it answers |
| --- | --- | --- |
| Data structures | custom dynamic array, linked list, stack, queue, BST, trie, union-find | What does the standard library normally own for me? |
| Hash / heap / graph | from-scratch implementations retained from v0.1 | Why do collision policy, priority ordering and traversal frontier shape matter? |
| OS boundary | real `fork`, `pipe`, `dup`, `waitpid`, `getpid` experiments | What is copied, shared, or represented by the kernel? |
| Virtual memory | anonymous `mmap`, page touch, mapped file persistence, guard-page failure | Why is a pointer a virtual address rather than “the RAM location”? |
| Memory | contiguous traversal vs pointer chasing; stack-frame vs heap-block touch | How can the same logical values have different machine costs? |
| Allocator | bump allocator, free list, split, coalescing and fragmentation probes | Why can free memory exist but a large allocation still fail? |
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
├── allocator.hpp        bump allocator · free list · split · coalescing · fragmentation stats
├── scheduler.hpp        FIFO · round-robin · priority · SJF toy scheduler metrics
├── toy_filesystem.hpp   directory entries · inode-like metadata · fixed-size blocks
├── firmware.hpp         ring buffer · protocol parser · cooperative scheduler · simulated MMIO
├── durable_job_runtime.hpp TCP-framed job runtime · idempotency · journal replay
├── embedded.hpp         HAL boundary · simulated output · thermal state machine
└── benchmark.hpp        warm-up · repeated samples · p50/p95 · mean/stddev
```

No third-party C++ data-structure or benchmark framework is required for these labs.

## Executable laboratories

Nineteen binaries emit machine-readable JSON. `tools/run_labs.py` only orchestrates them; it does not
manufacture algorithm results.

```text
hash-table          collision / load-factor behavior
heap-scheduler      priority selection vs repeated linear minimum
graph-traversal     BFS / DFS path and frontier behavior
concurrency-race    lost updates vs mutex / atomic correctness
raw-http            parser / keep-alive / pool / timeout behavior
db-index            in-memory B+ tree lookup and range behavior
data-structures     array/list/BST/trie/union-find behavior
algorithm-defense   wrong algorithm choices and measured selection reasoning
memory-locality     contiguous vs pointer-chasing memory access
process-fd          fork/process isolation/syscall/file-descriptor semantics
os-boundary         fd identity · COW · context switch proxy · fsync · read vs mmap
virtual-memory      mmap reservation · page touch · mapped file · guard-page signal
scheduler-internals FIFO/RR/priority/SJF run-queue trade-offs
storage-engine      row serialization → pages → file → B+tree locations
allocator           metadata · alignment · fragmentation · coalescing failures
toy-filesystem      path → directory entry → inode-like metadata → fixed-size blocks
firmware-boundary   HAL · ring buffer · serial protocol · scheduler jitter · simulated MMIO
embedded-simulator  simulated sensor event → state machine → digital output
durable-job-runtime TCP frame → parser → bounded queue → journal → recovery
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
- **atomic visibility of queue state** → `browser-reliability-runtime`: queue JSON writes now go to
  a same-directory temporary file and become visible through `rename`, with a storage regression
  test;
- **bounded memory retention** → `memory-atlas-server`: limited history reads retain only the last N
  lines instead of storing the entire file in memory;
- **path components as storage boundaries** → `memory-atlas-server`: room/user identifiers are
  sanitized before becoming history filenames, with traversal regression tests.
- **file durability boundary** → `browser-reliability-runtime`: queue state is written to a temp
  file, synced, atomically renamed and followed by best-effort directory sync;
- **optional durable append** → `memory-atlas-server`: chat history append can opt into `fsync` with
  `CHERRY_HISTORY_DURABLE_WRITES=1` without forcing that latency on default writes.

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
- [`docs/adr/`](docs/adr/) records engineering decisions such as coalescing, blocking sockets first,
  atomic queue writes and path-component storage boundaries.

This also records cases where applying a learned structure would be bad engineering. For example,
`elevator-queue-lab` has only six cars and dynamically changing dispatch scores, so replacing a
small scan with a heap merely to demonstrate a heap would add invalidation complexity without a
clear benefit.

## Source bridges, not forks

Toy implementations are compared to real systems without pretending to reproduce them.

[`docs/xv6-bridge.md`](docs/xv6-bridge.md) and
[`docs/source-reading/xv6-process-fd-vm.md`](docs/source-reading/xv6-process-fd-vm.md) map the POSIX
process/FD labs to the corresponding xv6 areas—`proc.c`, `syscall.c`, `file.c`, `pipe.c`, `vm.c`,
`spinlock.c` and `swtch.S`. [`docs/source-reading/postgres-pages-btree.md`](docs/source-reading/postgres-pages-btree.md)
maps the toy pager/index to narrowed PostgreSQL buffer and B-tree insertion files.

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
embedded HAL simulator. Algorithm selection/trade-off prompts live in
[`docs/algorithm-defense.md`](docs/algorithm-defense.md). See [`docs/interview/`](docs/interview/).

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
2. event-driven I/O (`kqueue`/`epoll`) after the blocking/threaded baseline;
3. persisted index pages, free page map and crash-recovery notes;
4. PostgreSQL `EXPLAIN (ANALYZE, BUFFERS)`, transaction/isolation, MVCC and WAL;
5. allocator bins, guard pages and a Linux ASan comparison environment;
6. algorithm patterns still missing real mechanism labs: binary search, sorting, greedy,
   backtracking and dynamic programming;
7. compiler/architecture bridge: more local `-O0` vs `-O2` assembly, stack frames, branches and cache;
8. physical Pico/ESP32/Arduino evidence only after a device is actually connected.

See [`docs/ROADMAP.md`](docs/ROADMAP.md).

## Quality bar

- C++20, `-Wall -Wextra -Wpedantic -Werror`;
- deterministic `system_tests` and `mastery_tests`;
- differential/property tests against standard-library references;
- malformed/edge-case coverage for new structures and HTTP parsing;
- persistence close/reopen checks for the toy storage engine;
- `clang-format` gate;
- Makefile and CMake build paths;
- 14-lab quick smoke in CI;
- versioned JSON + CSV benchmark evidence;
- Ubuntu CI plus macOS/Apple-Silicon release measurements.

The repository itself is MIT licensed. External-source and classmate-study decisions are documented
explicitly rather than inferred from repository visibility.
