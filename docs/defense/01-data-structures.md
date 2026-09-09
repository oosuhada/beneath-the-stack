# Defense: data structures

## 30 seconds

The repository uses custom containers where the data layout changes the system behavior: a ring
buffer bounds receive memory, a binary heap chooses the next job, hash tables map request IDs, and a
B+tree models ordered lookup. They are not shown as replacements for the standard library; they are
small enough to explain and test.

## 2 minutes

`durable-job-runtime` uses three structures in one path. `RingBuffer` absorbs fragmented TCP bytes
without allocating per byte. `BinaryMinHeap` orders ready jobs by run time, priority and sequence.
`LinearProbeHashTable` maps idempotency keys to logical job IDs. If the ring buffer overflows, bytes
are rejected; if the job queue fills, admission is rejected before the journal records acceptance.

## 10 minutes / source drill

- `include/bts/firmware.hpp::RingBuffer`: explain head, tail, size and overflow policy.
- `include/bts/min_heap.hpp::BinaryMinHeap`: explain sift-up/sift-down and why priority selection is
  not a repeated linear scan.
- `include/bts/hash_table.hpp::LinearProbeHashTable`: explain probing, load factor and why deletion
  is intentionally absent.
- `include/bts/bplus_tree.hpp`: explain why ordered range scans differ from hash lookup.

## Failure questions

- What happens if the ring buffer drops bytes mid-frame?
- Why is an unbounded queue easier to demo but worse for overload evidence?
- Why can a hash index be faster for exact IDs but weaker for ordered ranges?
- What breaks if the scheduler heap key ignores insertion sequence?
