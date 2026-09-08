# Race condition / mutex / atomic

## 30-second explanation

A race condition happens when the result depends on the timing/interleaving of concurrent operations.
Making individual reads and writes atomic does not automatically make a multi-step operation atomic.
This lab demonstrates that safely: each load and store uses `std::atomic`, but `load → +1 → store`
is split, so threads overwrite each other's updates. A mutex makes the compound increment exclusive;
`fetch_add` makes that read-modify-write one atomic operation.

## 2-minute explanation

In C++, unsynchronized concurrent access to a plain integer where at least one thread writes would be
a language-level data race and therefore undefined behavior. A teaching demo should not pretend that
the resulting number is a portable consequence of the standard.

The lab therefore separates two ideas:

- **data-race safety of each memory access** — the counter object is atomic;
- **logical atomicity of the whole update** — split load/store still allows lost updates.

Example interleaving:

```text
T1 load 41
T2 load 41
T1 store 42
T2 store 42
```

Two intended increments produced one net increment. A mutex serializes the critical section. Atomic
`fetch_add` expresses the exact single-variable read-modify-write directly. Neither is universally
“better”; the protected state and invariant determine the primitive.

## Explain it from code

- `include/bts/counter.hpp` — split load/store, mutex, atomic variants.
- `labs/concurrency_race/main.cpp` — correctness + timing comparison.

## Trade-off questions

- Why is `counter.store(counter.load() + 1)` different from `counter.fetch_add(1)`?
- What can a mutex protect that one atomic integer cannot?
- Why does `memory_order_relaxed` still work for this counter's final arithmetic value?
- When would relaxed ordering be insufficient?
- What creates deadlock, and why is “use a mutex” not a complete concurrency design?

## Product-engineering connection

Web frameworks often hide concurrency behind event loops, worker pools, database transactions and
request isolation. The connection is recognizing the shared invariant underneath those abstractions:
rate-limit counters, caches, background jobs and connection pools all fail if multiple actors can
observe and update shared state without a correct coordination rule.

## Evidence check

The split variant should be explained as a **logical race with defined atomic accesses**, not as a
benchmark of undefined C++ behavior. The wrong observed count can change run to run; that variability
is part of the lesson.

