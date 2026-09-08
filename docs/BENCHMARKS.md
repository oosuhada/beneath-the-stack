# v0.3 benchmark evidence

The v0.3 snapshot emphasizes failure modes and scaling observations rather than only one-off
timing numbers. Raw evidence is committed as:

- [`evidence/v0.3-macbook-air.json`](../evidence/v0.3-macbook-air.json)
- [`evidence/v0.3-macbook-air.csv`](../evidence/v0.3-macbook-air.csv)
- [`evidence/v0.3-storage-scaling.json`](../evidence/v0.3-storage-scaling.json)
- [`evidence/v0.3-storage-scaling.csv`](../evidence/v0.3-storage-scaling.csv)
- [`evidence/sanitizers/v0.3-macbook-air.txt`](../evidence/sanitizers/v0.3-macbook-air.txt)
- [`evidence/assembly/`](../evidence/assembly/)

## v0.3 provenance

| Field | v0.3 value |
| --- | --- |
| Source commit measured | `8ad54f23ab4b71cd8b97e2bcdc4c44a6c55814a5` |
| Machine | `Mac15,13`, arm64 |
| OS | Darwin 27.0.0 |
| Compiler | Apple clang 16.0.0 |
| C++ flags | `-std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread` |
| Executable labs | 14 |
| Normalized benchmark records | 42 |

## v0.3 selected observations

| Track | Observation | Evidence |
| --- | --- | --- |
| Allocator | bump allocator cannot reuse individual frees; no-coalescing free list fails the large allocation probe; coalescing succeeds | `labs/allocator/main.cpp` |
| Allocator mixed workload | no-coalescing left **154,136 bytes** external fragmentation after drain; coalescing returned to **0 bytes** external fragmentation | `evidence/v0.3-macbook-air.json` |
| Virtual memory | mapping 64 MiB without touch did not increase resident bytes in the sample; touching every page raised resident bytes to **68,763,648** | `labs/virtual_memory/main.cpp` |
| Guard page | child process died with signal **10** when reading a `PROT_NONE` page | `labs/virtual_memory/main.cpp` |
| Process pipeline | `cat file | grep apple | wc -l` produced `3` and all child exit codes were `0` | `labs/process_fd/main.cpp` |
| Zombie observation | child exit code `23` was observable as state `Z` before `wait()` on macOS | `labs/process_fd/main.cpp` |
| Pipe capacity | non-blocking pipe filled at **65,536 bytes** before `EAGAIN` in this run | `labs/process_fd/main.cpp` |
| Networking | thread-per-client slow requests p50 **172.619 ms** vs serial blocking slow requests p50 **589.953 ms** | `labs/raw_http/main.cpp` |
| Algorithm defense | BFS hop path cost **101** while Dijkstra cost **3** on the weighted fixture | `labs/algorithm_defense/main.cpp` |
| Dynamic programming | naive Fibonacci(32) used **7,049,155** calls vs memoized **63** calls | `labs/algorithm_defense/main.cpp` |
| Binary search | 1,000 queries on 1,000,000 sorted items: linear p50 **147.106 ms**, binary p50 **0.043 ms** | `labs/algorithm_defense/main.cpp` |
| Storage | 4,000-row page-backed scan p50 **33.083 ms**, B+tree → page/slot lookup p50 **0.380 ms** | `labs/storage_engine/main.cpp` |

## Storage scaling observation

The scaling run compares the same storage lab at 1k, 10k and 50k rows. This is an empirical curve,
not a proof of asymptotic complexity.

| Rows | Data pages | Index height | Sequential lookup p50 | Indexed lookup p50 | Rebuild p50 |
| ---: | ---: | ---: | ---: | ---: | ---: |
| 1,000 | 32 | 3 | 5.875 ms | 0.241 ms | 0.102 ms |
| 10,000 | 313 | 4 | 50.870 ms | 0.261 ms | 0.900 ms |
| 50,000 | 1,563 | 4 | 286.606 ms | 0.254 ms | 4.886 ms |

The result matches the prediction direction: page-backed sequential point lookup grows with row
count, while the in-memory B+tree location lookup stays much flatter for this range. The index
rebuild also grows because the toy index is rebuilt by scanning persisted pages on open. This is a
deliberate limitation, not a PostgreSQL claim.

## Sanitizer and assembly notes

`tools/run_sanitizers.sh` deliberately compiles and runs two crashing programs. ASan detected the
heap overflow fixture and UBSan detected the misaligned access fixture, both exiting with status
134 on this machine. A separate attempt to run the full test binary with ASan leak detection failed
because this Apple clang runtime does not support that mode, so full-test ASan coverage is not
claimed.

Assembly snapshots are stored under `evidence/assembly/`. They are used as a checkable bridge from
C++ source to compiler output, not as a claim of complete assembly expertise.

---

# v0.2 benchmark evidence

The v0.2 release benchmark is a **single MacBook Air observation**, not a portable performance
ranking. Raw machine-readable evidence is committed as:

- [`evidence/v0.2-macbook-air.json`](../evidence/v0.2-macbook-air.json)
- [`evidence/v0.2-macbook-air.csv`](../evidence/v0.2-macbook-air.csv)

The previous v0.1 snapshot remains at
[`evidence/v0.1-macbook-air.json`](../evidence/v0.1-macbook-air.json) for historical comparison.

## Provenance

| Field | v0.2 value |
| --- | --- |
| Source commit measured | `8a6d49598a5237ea92410a36f36555218619d570` |
| Machine | `Mac15,13`, arm64 |
| Memory | 25,769,803,776 bytes |
| OS | Darwin 27.0.0 |
| Compiler | Apple clang 16.0.0 |
| C++ flags | `-std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread` |
| Clock | `std::chrono::steady_clock` |
| Evidence schema | 2 |
| Executable labs | 11 |
| Normalized benchmark records | 34 |

Every benchmark reports its own warm-up and repetition count with mean, standard deviation, p50,
p95, minimum and maximum. Input sizes remain in each lab JSON object rather than being hidden in the
summary table.

## Selected observations

| Experiment | Workload | p50 observation |
| --- | --- | ---: |
| Hash lookup — chaining | 20,000 keys, load factor 0.610 | 0.625 ms |
| Hash lookup — linear probing | same keys/load factor | 0.682 ms |
| Heap scheduler | 2,500 tasks | 0.135 ms |
| Repeated linear minimum | same 2,500 tasks | 6.002 ms |
| BFS | 120×120 grid | 0.090 ms |
| DFS | same grid | 0.079 ms |
| Mutex counter | 8×100,000 increments | 15.334 ms |
| Atomic `fetch_add` counter | same increments | 13.544 ms |
| New TCP connection per HTTP request | 80 loopback requests | 4.340 ms |
| One HTTP keep-alive connection | same requests | 1.204 ms |
| Four-connection reusable pool | same requests | 1.405 ms |
| Contiguous traversal | 200,000 values | 0.054 ms |
| Linked pointer chase | same logical values | 0.088 ms |
| `getpid()` calls | 1,000,000 calls/sample | 1.089 ms |
| Volatile cached PID loads | 1,000,000 loads/sample | 0.272 ms |
| `fork()` + `waitpid()` | one child/sample | 0.349 ms |
| Page-backed sequential lookup | 300 queries / 4,000 rows | 33.320 ms |
| B+tree → page/slot lookup | same persisted rows/queries | 0.375 ms |
| Page scan → index rebuild | 4,000 persisted rows | 0.363 ms |

Ratios are useful only for describing these exact workloads. In this run:

- repeated linear-min scheduling used about **44.4×** the p50 wall time of the heap scheduler;
- opening a new loopback TCP connection for each request used about **3.6×** the p50 wall time of
  keep-alive;
- linked pointer chasing used about **1.64×** the p50 wall time of contiguous traversal;
- 1,000,000 `getpid()` calls used about **4.0×** the p50 wall time of 1,000,000 volatile cached loads;
- page-backed sequential point lookup used about **88.7×** the p50 wall time of the toy B+tree
  location index.

None of those ratios should be copied into a claim about another CPU, input distribution, compiler,
operating system or production application.

## Correctness evidence next to timing

Timing is not considered useful when it hides wrong behavior.

### Concurrency

The split atomic `load → +1 → store` variant produced **118,704** when the intended result was
**800,000**. Both the mutex and atomic `fetch_add` variants produced exactly 800,000.

The incorrect variant is much faster because it loses updates. It must not be presented as the
“fast” implementation.

### BST input shape

The ordinary, intentionally unbalanced BST had height **35** after the seeded randomized workload,
but height **1,500** for 1,500 sorted insertions. This is the failure case that motivates balanced
search trees rather than a benchmark claiming every BST lookup is logarithmic.

### Process / file descriptor semantics

The process lab also records semantic observations that are more important than timing:

```text
parent local after fork: 7
child local after mutation: 99

fd read:       "ab"
dup(fd) read:  "cd"
```

The first pair demonstrates separate process address spaces after `fork()` for the local mutation.
The second demonstrates that duplicated descriptors refer to the same open-file description and
therefore share the file offset.

### Networking timeout

The raw HTTP lab reports `timeout_observed: true`: a deliberately slow `/slow` response exceeded the
configured receive timeout. This verifies the failure path, **not** a recommended production timeout.

### Persisted storage

The storage lab writes 4,000 fixed 128-byte rows across **125 data pages** of 4 KiB each. Correctness
tests separately close/reopen the file, rebuild the in-memory index from pages, compare indexed and
sequential lookup results, and reject duplicate primary keys.

### Embedded simulator

The simulator records four deterministic actuator transitions and explicitly emits
`hardware_claim: false`. It proves the HAL/state-machine architecture and testability, not physical
GPIO experience.

## Benchmark mistakes caught during development

Two results were rejected before release rather than documented as evidence:

1. The first memory-locality implementation allowed the optimizer to remove or constant-fold too
   much predictable work, producing near-zero measurements. Observable memory access was added to
   keep the intended work in the timed region.
2. The first cached-PID comparison also fell below useful timer resolution because the loop could be
   collapsed. v0.2 now performs 1,000,000 **volatile** cached loads per sample and records that input
   count explicitly.

This is part of the benchmark contract: if the measurement does not represent the claimed work, the
number is discarded rather than polished.

## Important limitations

- The POSIX results are macOS-specific release observations; Ubuntu CI checks portability/build, not
  numerical equivalence.
- Loopback TCP does not include DNS, TLS, network RTT, packet loss or a remote server.
- The connection pool is intentionally tiny and lacks stale-connection eviction/health checking.
- The in-memory B+tree and page-backed toy table do not implement PostgreSQL planner behavior,
  persisted index pages, free-page management, MVCC, WAL or crash recovery.
- The storage sequential scan intentionally performs repeated point searches from persisted pages;
  it is not a throughput scan benchmark.
- Stack-frame and heap-block touch numbers are too small and too narrow to support a general
  “stack is faster than heap” claim.
- The process benchmark measures this macOS implementation of `getpid`/`fork`, not a universal
  syscall cost.
- Thermal-state-machine timing measures a deterministic simulator loop, not embedded interrupt
  latency.

## Reproduce

```bash
make clean
make -j2 all
make test
make lint

python3 tools/run_labs.py \
  --profile standard \
  --output evidence/v0.2-macbook-air.json \
  --csv-output evidence/v0.2-macbook-air.csv
```

For a new measurement, do not overwrite this release file unless the source commit/environment is
also being versioned as a new evidence snapshot.

## v0.4 OS-boundary evidence

v0.4 narrows the benchmark story around user-space calls meeting kernel-maintained abstractions.
Machine-readable release evidence is committed as:

- [`evidence/v0.4-macbook-air.json`](../evidence/v0.4-macbook-air.json)
- [`evidence/v0.4-macbook-air.csv`](../evidence/v0.4-macbook-air.csv)

| Field | v0.4 value |
| --- | --- |
| Source commit measured | `2a0514c57d13b7c251e1b18f662cb231b0effa0a` |
| Executable labs | 17 |
| Normalized benchmark records | 51 |

### Syscall / file-descriptor identity

The new `os-boundary` lab records that macOS treats raw `syscall(2)` as deprecated, so this portable
build uses the supported libc `write()` wrapper and records that limitation rather than suppressing
the warning. The same lab still observes the fd/open-file distinction:

| Fixture | Parent read | Child read | Interpretation |
| --- | --- | --- | --- |
| inherited fd after `fork()` | `ab` | `cd` | parent and child share the same open-file offset |
| independent reopen into fd 3 | `ab` | `ab` | same descriptor number does not imply same open-file object |

### Copy-on-write style observation

The host OS experiment maps and touches 1,024 pages, forks, has the child write each page, and then
checks that the parent still sees the old byte.

```text
parent_first_byte_after_child = 1
child_first_byte_after_write  = 2
child RSS before write        = 1,163,264 bytes
child RSS after write         = 17,956,864 bytes
```

This is user-space evidence for process address-space isolation and host COW behavior. It is not a
claim that baseline xv6 implements COW; the source-reading note explicitly points out xv6's eager
`uvmcopy()` path.

### Context-switch proxy

The lab compares a no-switch loop with thread condition-variable ping-pong and process pipe
ping-pong. For the standard v0.4 workload:

| Experiment | p50 |
| --- | ---: |
| thread condition-variable ping-pong | 2.404 ms |
| process pipe ping-pong | 4.231 ms |

These values are a user-space proxy, not a kernel scheduler measurement. The `sample` trace in
[`evidence/debugger/v0.4-sample-os-boundary.txt`](../evidence/debugger/v0.4-sample-os-boundary.txt)
shows the program in `read`, `write` and pthread condition-variable paths.

### `read()` vs `mmap()`

For a 1 MiB sequential checksum fixture:

| Access mode | p50 |
| --- | ---: |
| `read()` loop | 0.164 ms |
| file-backed `mmap()` sequential walk | 0.298 ms |

The conclusion is not that `read()` is universally faster. In this workload the explicit read loop
won; `mmap()` remains useful when the program benefits from addressable file contents, random access
or OS page-cache behavior that matches the access pattern.

### Durability boundary

For a 4 KiB write fixture:

| Operation | p50 |
| --- | ---: |
| `write + close` | 0.122 ms |
| `write + fsync + close` | 0.132 ms |

This benchmark only records the syscall boundary cost on this machine. It does not simulate a power
loss and does not prove data-loss behavior. The product changes use the lesson conservatively:
small queue state files get explicit sync/rename boundaries, while chat-history fsync is opt-in.

### Scheduler policy simulator

The scheduler lab uses a deterministic convoy workload. It is not the macOS scheduler. Its purpose is
to connect xv6's `RUNNABLE -> RUNNING -> swtch()` source reading to policy trade-offs.

| Policy | Notable observation |
| --- | --- |
| FIFO | max waiting = 69 |
| Round robin | max waiting = 45 on the same workload |
| Non-preemptive priority | long low-priority job waits 43 |
| Shortest-job-first | mean turnaround = 14.4667 |

The first round-robin implementation produced impossible unsigned waiting values because the running
job could be re-enqueued while still executing. That bug and fix are recorded in the v0.4 OS
notebook.

### Toy filesystem

The toy filesystem lab models path lookup as directory entries pointing to inode-like metadata and
fixed-size blocks:

```text
same_inode_for_hard_link = true
reference_count          = 2
block_count              = 4
traversal_rejected       = true
```

This is a model of identity and lookup, not a production filesystem.
