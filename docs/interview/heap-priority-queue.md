# Heap / priority queue

## 30-second explanation

A binary heap stores a partial order in an array: each parent has higher priority than its children.
That is enough to read the minimum in `O(1)` and insert/remove it in `O(log n)` without fully sorting
the remaining elements. This makes a heap a natural implementation for a priority queue when work
arrives dynamically.

## 2-minute explanation

For index `i`, a binary heap maps children to `2i + 1` and `2i + 2`, so it gets a tree shape without
node pointers. Insertion appends the new element and **sifts up** until the parent relationship is
restored. Removing the minimum moves the last element to the root and **sifts down**.

The important distinction from sorting is intent. Sorting pays to establish an ordering among every
element. A priority queue only promises that the next highest-priority element can be obtained
efficiently. If tasks arrive continuously, repeatedly scanning the pending set for a minimum wastes
work; the heap preserves just enough structure between operations.

The scheduler demo uses earliest deadline as the priority. It is not an operating-system scheduler;
it is an applied data-structure experiment showing why dynamic priority selection exists.

## Explain it from code

- `include/bts/min_heap.hpp` — array representation, `sift_up`, `sift_down`.
- `labs/heap_scheduler/main.cpp` — deadline task model and scan baseline.

Draw this invariant:

```text
parent <= left child
parent <= right child
```

Then explain why that does **not** imply the array is globally sorted.

## Trade-off questions

- Why is arbitrary search in a heap still `O(n)`?
- When is sorting once faster than maintaining a heap?
- What changes if task priorities need to be updated after insertion?
- Why might a real scheduler need multiple queues, fairness or preemption beyond one heap?
- What memory-locality benefit does an array-backed heap have over a pointer-heavy tree?

## Product-engineering connection

The same shape appears behind job queues, timers, retry scheduling and “next most important item”
systems. The connection to product work is choosing a structure based on the operation that repeats:
if the product repeatedly needs *the next priority item while new items arrive*, a priority queue is
more natural than resorting the whole set.

## Evidence check

Use the scheduler trace to explain which tasks enter the ready queue before each pop and why the
benchmark baseline becomes worse as the pending set grows.

