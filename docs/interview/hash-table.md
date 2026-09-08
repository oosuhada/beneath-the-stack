# Hash table

## 30-second explanation

A hash table converts a key into a bucket/slot index. With a well-distributed hash function and a
controlled load factor, the expected number of entries inspected per lookup stays roughly constant,
so average lookup is usually described as `O(1)`. That is not a worst-case guarantee: many keys can
collide, producing `O(n)` behavior. This lab implements both separate chaining and linear probing so
the collision strategy is visible instead of hidden behind `unordered_map`.

## 2-minute explanation

The hash function does not make a key unique; it compresses a much larger key space into a fixed
number of slots, so collisions are unavoidable. A hash table therefore needs two policies:

1. **collision handling** — where a second key goes when its preferred slot is occupied;
2. **load control** — when the table grows so collisions do not dominate lookup cost.

`ChainedHashTable` stores a small vector of key/value pairs per bucket. Lookup hashes once and scans
that bucket. `LinearProbeHashTable` stores entries directly in one contiguous slot array and walks to
the next slot on collision. Linear probing can benefit from locality, but clustering becomes expensive
as the table fills. The implementation resizes before a configured load threshold.

Average `O(1)` is therefore an expected-cost statement under assumptions about hash distribution and
load. An adversarial or pathological collision pattern can still force a linear scan.

## Explain it from code

- `include/bts/hash_table.hpp` — FNV-1a hash, chaining, linear probing, resize logic.
- `labs/hash_table/main.cpp` — insert/lookup benchmark and collision evidence.
- `tests/system_tests.cpp` — resize/update/missing-key invariants.

Trace this path during an interview:

```text
key
→ hash(key)
→ capacity mask
→ bucket / starting slot
→ collision policy
→ optional resize
```

## Trade-off questions

- Why does open addressing usually require a lower maximum load factor than chaining?
- What happens if the hash function produces the same value for every key?
- Why can resizing cause a latency spike even if steady-state lookup is fast?
- Why does deleting from an open-addressed table require a tombstone or a more careful relocation rule?
- When would a sorted vector or tree be a better choice than a hash table?

## Product-engineering connection

Application frameworks make hash maps feel like a primitive: request metadata, caches, deduplication,
configuration lookup and in-memory indexes all use the same conceptual trade. The useful question is
not “is a HashMap fast?” but “what are my key distribution, memory overhead, resize behavior and
ordering/range-query requirements?”

## Evidence check

Before marking this concept complete, explain why the committed collision histogram changes when the
load factor changes, and why that changes the meaning of the measured lookup latency.

