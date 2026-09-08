# beneath-the-stack

**Beyond the browser. From product code to systems fundamentals.**

I have spent most of my development time building things people can use directly: web products,
AI/RAG systems, backend APIs, databases, deployment pipelines and interactive interfaces. That work
taught me how to turn an idea into a product, but it also made one boundary increasingly visible:
once the browser and application frameworks disappear, much more of the computer becomes my
responsibility.

Operating systems, memory, sockets, scheduling, concurrency, storage engines, embedded devices and
hardware control do not become understandable just because I can assemble a good web stack. They
force the underlying data structures, algorithms and machine behavior back into view.

`beneath-the-stack` is where I study that layer in the same way I usually build products:
**implement something, break assumptions, measure the behavior, make the evidence inspectable and
then explain the trade-off.** It is intentionally not another archive of solved coding-test
problems.

```text
Don't memorize the abstraction.
Break it.
Implement it.
Measure it.
Explain it.
```

## v0.1 at a glance

The first release is deliberately small. Six executable C++20 labs establish the project contract
before the roadmap grows.

| Lab | What is implemented | What is measured / observed |
| --- | --- | --- |
| **Hash Table** | FNV-1a hashing, separate chaining, linear probing, resizing | insert/lookup latency, load factor, collision-chain histogram, cluster length |
| **Heap Scheduler** | binary min-heap from scratch + earliest-deadline scheduler | heap scheduling versus repeated linear minimum selection + execution trace |
| **BFS / DFS** | adjacency-list graph, BFS, DFS, shortest-path reconstruction | traversal latency, visit order, path, peak frontier size |
| **Race / Mutex / Atomic** | split load/store lost-update race, mutex increment, atomic `fetch_add` | correctness gap and p50/p95 timing without invoking a C++ data-race UB |
| **Raw TCP / HTTP** | POSIX loopback server/client, HTTP/1.1 framing, keep-alive, concurrent clients | new connection versus keep-alive versus concurrent keep-alive |
| **B+ Tree Index** | insertion, node splitting, lookup, linked-leaf range scan | index build cost, lookup versus sequential scan, tree height and leaf count |

Every benchmark reports warm-up count, repetitions, mean, standard deviation, p50, p95, minimum and
maximum. The committed results are observations from one machine, not universal performance claims.

## Architecture

The browser is an observer, not the system under test.

```text
┌──────────────────────────────────────────────────────────────┐
│                    C++20 systems core                       │
│  hash table · heap · graph · threads · sockets · B+ tree   │
└──────────────────────────────┬───────────────────────────────┘
                               │
                     measurements / traces
                               │
┌──────────────────────────────▼───────────────────────────────┐
│                reproducible evidence runner                 │
│     warm-up · repetitions · p50/p95 · environment          │
└──────────────────────────────┬───────────────────────────────┘
                               │
                     JSON evidence document
                               │
┌──────────────────────────────▼───────────────────────────────┐
│                    local lab observer                       │
│   collisions · traversal · scheduler · race · HTTP · DB    │
└──────────────────────────────────────────────────────────────┘
```

The reusable implementations live in `include/bts/`. Each executable experiment lives under
`labs/`. `tools/run_labs.py` is only orchestration: it does not calculate the algorithmic result. The
dashboard reads the JSON emitted by those binaries.

See [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) for the layer boundaries and design constraints.

## Run it

The local build has no third-party C++ dependency.

```bash
make -j2 all
make test
make lint
python3 tools/run_labs.py --profile quick
```

For the fuller benchmark profile:

```bash
python3 tools/run_labs.py --profile standard
```

To open the observer after generating data:

```bash
python3 tools/run_labs.py --profile standard --dashboard-data
python3 -m http.server 8080 -d dashboard
```

Then open `http://localhost:8080`. CMake is also supported for portable CI builds:

```bash
cmake -S . -B build-cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake
ctest --test-dir build-cmake --output-on-failure
```

## Evidence from the MacBook Air

The v0.1 release evidence is generated on the MacBook Air with the standard profile and recorded in
[`docs/BENCHMARKS.md`](docs/BENCHMARKS.md). It is intentionally reported with the machine/compiler
context and without claims that one result will generalize to another CPU, compiler or operating
system.

| Experiment | v0.1 MacBook Air observation |
| --- | --- |
| Heap priority selection | 2,500 tasks: heap p50 **0.233 ms** vs repeated linear-min **5.709 ms** |
| Concurrency correctness | split load/store **138,209 / 800,000**; mutex and atomic both **800,000 / 800,000** |
| HTTP connection reuse | 80 loopback requests: new-connection p50 **4.211 ms** vs keep-alive **1.196 ms** |
| B+ tree point queries | 600 queries over 12,000 rows: sequential-scan p50 **0.922 ms** vs index **0.015 ms**; build p50 **0.890 ms** |

These are deliberately paired with the work performed and the correctness/maintenance cost. For
example, the incorrect race variant is faster because it loses updates, while the B+ tree read result
is reported together with index build cost.

The strongest observations are meant to answer *why* an abstraction exists, not to produce a
leaderboard:

- collisions remain manageable only while the table controls load factor and resize policy;
- a heap changes repeated priority selection from scanning the whole pending set to logarithmic
  insertion/removal behavior;
- BFS pays for a wider frontier because it preserves shortest-path guarantees on an unweighted graph;
- synchronization strategy changes both correctness and coordination cost;
- HTTP keep-alive avoids repeatedly paying the TCP connection setup cost even on loopback;
- an index has a build/maintenance cost, but repeated point lookups stop scanning every row.

## What I can now explain

v0.1 is considered learned only where the repository contains an implementation, a failing or
contrasting case, a measurement and an explanation.

- why average hash-table lookup can be constant-time while worst-case lookup is still linear;
- how chaining and open addressing respond differently to load and collisions;
- why a binary heap is a natural priority-queue representation but is not a general replacement for sorting;
- why BFS finds an unweighted shortest path and why DFS often keeps a different memory shape;
- why individually atomic operations do not automatically make a compound operation atomic;
- what a mutex protects versus what `fetch_add` guarantees in the counter experiment;
- what a TCP connection and an HTTP/1.1 keep-alive request actually look like below a framework;
- why a B+ tree keeps search keys in internal nodes and linked data-bearing leaves for range access;
- why a PostgreSQL-style index can trade write/build work and storage for faster reads.

The goal is not to claim mastery of all systems programming from six labs. The goal is to make every
future claim earn evidence in the same way.

## Interview mode

Each completed concept gets a short explanation, a deeper explanation, a code pointer, trade-off
questions and a connection back to application engineering:

- [`docs/interview/hash-table.md`](docs/interview/hash-table.md)
- [`docs/interview/heap-priority-queue.md`](docs/interview/heap-priority-queue.md)
- [`docs/interview/bfs-dfs.md`](docs/interview/bfs-dfs.md)
- [`docs/interview/concurrency.md`](docs/interview/concurrency.md)
- [`docs/interview/tcp-http.md`](docs/interview/tcp-http.md)
- [`docs/interview/bplus-tree.md`](docs/interview/bplus-tree.md)

The format is deliberately not an answer sheet. The questions are prompts that should be answerable
from the implementation and evidence in this repository.

## Mastery, not problem count

Progress is tracked in [`progress/mastery.json`](progress/mastery.json) using five evidence stages:

```text
learned → implemented → benchmarked → explained → applied
```

`applied` means the concept has been placed into a scenario with a purpose beyond calling the data
structure once: scheduler behavior, pathfinding, connection reuse, indexed record lookup, and so on.
It does **not** mean production-hardened.

The long-term domains are:

```text
Data Structures
Algorithms
Operating Systems
Networking
Database Internals
Concurrency
Systems Programming
Embedded / Hardware
```

## Beyond the browser

v0.2 expands downward rather than sideways. Planned labs include stack/heap allocation and
fragmentation, virtual-memory/page experiments, file descriptors and syscalls, deadlock + wait-for
graphs, UDP/DNS, socket pooling, a PostgreSQL `EXPLAIN ANALYZE` bridge, and the missing algorithm/data
structure fundamentals (linked list, BST, sorting, binary search, greedy, basic DP).

Embedded/hardware is a separate future phase. No physical Raspberry Pi, Arduino or ESP32 result is
claimed in v0.1. The roadmap first introduces a small hardware-abstraction boundary and simulator;
real GPIO/serial/interrupt evidence only becomes complete after a physical device is actually
connected and measured.

See [`docs/ROADMAP.md`](docs/ROADMAP.md).

## Tests and quality bar

- deterministic structure/invariant tests in `tests/system_tests.cpp`;
- `-Wall -Wextra -Wpedantic -Werror` on local/CI builds;
- quick benchmark smoke test in CI to verify every experiment remains executable;
- CMake portability build in addition to the dependency-free Makefile path;
- CI formatting check with `clang-format`;
- benchmark methodology records warm-up, repetitions and environment metadata;
- no benchmark number is described as hardware-independent truth.

## Reference and license policy

I inspected several public classmate repositories for study organization before defining this
project. Their GitHub metadata did not expose an explicit code license for the algorithm repositories
surveyed, so **no source code was copied from them**. They are recorded only as investigated
references in [`docs/REFERENCES.md`](docs/REFERENCES.md).

All implementation code in this repository was written for `beneath-the-stack` and is released
under the MIT License. See [`LICENSE`](LICENSE).

