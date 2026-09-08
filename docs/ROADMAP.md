# Roadmap

The roadmap advances when a concept earns evidence, not when a checkbox gets added.

## v0.1 — foundation (complete)

- [x] hash table: chaining + open addressing + resize + benchmark
- [x] binary heap + scheduler experiment
- [x] BFS/DFS + path reconstruction + frontier observation
- [x] lost-update / mutex / atomic experiment
- [x] raw TCP + HTTP/1.1 keep-alive
- [x] in-memory B+ tree + scan comparison
- [x] deterministic tests, CI and thin observer

## v0.2 — systems mastery bridge (current release)

### Deep work completed

- [x] custom dynamic array, linked list, stack, queue, BST, trie and union-find;
- [x] adversarial/correctness suite for new structures;
- [x] BST sorted-input degeneration observation;
- [x] contiguous vs pointer-chasing memory-locality benchmark;
- [x] stack-frame vs heap-block touch experiment;
- [x] real POSIX `fork`, `pipe`, `dup`, `waitpid`, `getpid` lab;
- [x] HTTP request-line/header parser + malformed input tests;
- [x] keep-alive + connection pool + receive-timeout experiment;
- [x] fixed-row serialization + 4 KiB pager + persisted file + B+tree row-location index;
- [x] close/reopen and persisted-index rebuild correctness checks;
- [x] HAL + deterministic temperature/event/state-machine simulator (no hardware claim);
- [x] JSON schema v2 + normalized benchmark CSV;
- [x] numeric 0–5 mastery ledger with artifact links;
- [x] classmate/own-solution algorithm pattern map;
- [x] xv6 source-location bridge;
- [x] concept → existing product map;
- [x] real concurrency application in `browser-reliability-runtime`;
- [x] bounded-history memory application in `memory-atlas-server`.

### Intentionally not forced into v0.2

- heap replacement inside `elevator-queue-lab`: six dynamically rescored cars do not justify heap
  invalidation complexity merely to demonstrate the structure;
- physical GPIO/serial claims: no device was connected during this release;
- PostgreSQL planner claims: no repeatable `EXPLAIN (ANALYZE, BUFFERS)` fixture has been captured yet;
- production HTTP parser/security claims: the lab parser remains deliberately scoped.

## v0.3 — OS, concurrency and architecture depth

Priority order:

1. **Deadlock lab** — intentional cycle, wait-for graph, detection, lock ordering and timeout escape.
2. **Semaphore/bounded buffer** — producer/consumer queue, backpressure and throughput/latency.
3. **Allocator lab** — free list, first/best fit, fragmentation, allocation/free traces.
4. **Virtual-memory lab** — page size/touch, `mmap`, page-fault observation where macOS tools permit;
   document OS-specific measurement limits.
5. **Local assembly bridge** — compile identical C++ with `-O0`/`-O2`, save assembly, connect stack
   frames, branches, inlining and vectorization to measured code.
6. **Event-driven I/O** — small readiness loop with macOS `kqueue` and Linux `epoll` adapter design.

## v0.4 — networking + database internals

- UDP echo + controlled loss/retry simulator;
- minimal DNS encoder/decoder;
- connection deadline, retry/backoff and idempotency experiments;
- toy job queue: producer → queue → worker → retry → dead-letter → idempotency key;
- persist B+tree pages rather than rebuilding the whole in-memory index;
- free-page management and simple page cache;
- PostgreSQL fixture + `EXPLAIN (ANALYZE, BUFFERS)` sequential/index scan bridge;
- transaction isolation timelines, MVCC visibility and WAL/checkpoint observation.

## v0.5 — algorithm mechanisms, not solution volume

Use representative problems already present in classmate/own histories as prompts, but implement the
mechanism only once here:

- binary search + boundary errors + branch/input-shape experiment;
- sorting families + nearly-sorted/reversed/duplicate-heavy inputs;
- two pointer / sliding window / prefix sum;
- Dijkstra + topological sort;
- greedy counterexample lab;
- backtracking state-space/pruning;
- basic dynamic programming memoization/tabulation/state compression;
- LRU cache as a data-structure composition exercise.

The target is pattern familiarity plus mechanism understanding, not 200 copied solutions.

## v0.6 — embedded / hardware

The simulator foundation already exists. Physical evidence begins only after a device is connected.

1. extend HAL with digital input, timer and serial transport;
2. keep simulator protocol/state-machine tests reusable;
3. add one Pico or ESP32 adapter;
4. record board, SDK, firmware, wiring and serial traces;
5. compare polling vs interrupt/event behavior;
6. connect scheduling/queues to FreeRTOS only after the bare-metal boundary is understood.

## Long-term compiler bridge

Use `chibicc` as a source-study reference while building a deliberately tiny sequence:

```text
source text → tokens → expression AST → simple code generation / machine-level observation
```

Do not turn the repository into a full compiler project until the OS/memory/architecture tracks are
strong enough to explain the generated machine behavior.
