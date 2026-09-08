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
