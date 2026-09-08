# Algorithm defense: why a pattern is chosen and what fails

This document is not a problem archive. It records selection reasoning: why a pattern fits, which
tempting alternative fails, and what artifact in this repository checks the mechanism.

| Pattern | Good reason to choose it | Bad candidate | Why the bad candidate fails | Evidence |
| --- | --- | --- | --- | --- |
| BFS | Unweighted shortest path because frontier layers correspond to distance | DFS | DFS may find a path but not the shortest one without exploring alternatives | `include/bts/graph.hpp`, `labs/graph_traversal/main.cpp` |
| DFS | Exhaustive reachability/backtracking shape where depth-first state is natural | BFS | BFS stores broad frontiers and is awkward for recursive choice trees | `include/bts/graph.hpp`, `docs/interview/bfs-dfs.md` |
| Heap / priority queue | Repeatedly selecting the current minimum/earliest deadline | linear scan each time | Correct for tiny N, but repeated selection is O(n²)-like for the lab workload | `include/bts/min_heap.hpp`, `labs/heap_scheduler/main.cpp` |
| Binary search | Monotonic predicate or sorted search space | linear scan | Easier but ignores order and scales with every candidate | `docs/algorithm-patterns.md` |
| Union-Find | Many dynamic connectivity merges and queries | BFS/DFS after every union | Re-traverses the graph each query; path compression stores component knowledge | `include/bts/data_structures.hpp`, `tests/mastery_tests.cpp` |
| Dijkstra | Weighted non-negative shortest path | BFS | BFS assumes each edge has equal cost; weighted edges break layer-distance equivalence | roadmap, future lab |
| Topological sort | Directed acyclic dependency ordering | plain sort by node label | Labels are not dependency constraints; cycles must be detected | roadmap, future lab |
| Greedy | Local choice has an exchange argument | arbitrary local rule | Many local choices look plausible but fail without an invariant | `docs/algorithm-patterns.md` |
| Dynamic programming | Overlapping subproblems + optimal substructure | naive recursion | Recomputes the same state repeatedly; future lab should count calls | roadmap, future lab |

## Differential testing added in v0.3

`tests/differential_tests.cpp` compares custom implementations against reference structures:

- custom binary heap vs `std::priority_queue` under fixed-seed operations;
- custom hash tables vs `std::unordered_map` for updates and lookups;
- custom B+ tree vs `std::map` for point lookup and range queries;
- custom allocator randomized invariants for alignment, live-address uniqueness and coalescing.

The goal is not to beat the standard library. The goal is to catch cases where my implementation
quietly returns a plausible but wrong answer.
