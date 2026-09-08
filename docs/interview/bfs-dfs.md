# BFS / DFS

## 30-second explanation

BFS explores a graph level by level with a queue, so on an unweighted graph the first time it reaches
a node is through a shortest-edge-count path. DFS follows one branch deeply with a stack before
backtracking. Both are `O(V + E)` on an adjacency-list graph, but traversal order and frontier memory
can be very different.

## 2-minute explanation

Complexity alone does not tell me which traversal to use because BFS and DFS can touch the same
number of vertices/edges while solving different problems.

BFS stores the current frontier. If a graph is broad, that queue can become large, but the layered
exploration gives an unweighted shortest-path guarantee. DFS stores a path plus pending branches and
is often useful for connectivity, cycle-oriented reasoning, topological algorithms or exhaustive
search where shortest distance is not the goal.

The lab records visit order, parent links and peak frontier size. Parent links turn the traversal into
a reconstructable evidence trail rather than just a boolean “found”. The maze uses BFS for the
shortest path and keeps DFS as a contrasting traversal.

## Explain it from code

- `include/bts/graph.hpp` — adjacency list, BFS queue, DFS stack, parent reconstruction.
- `labs/graph_traversal/main.cpp` — deterministic grid fixture and measured frontier size.

Use this operation-level comparison:

```text
BFS: pop front → discover all neighbors → push back
DFS: pop top   → choose next branch      → push stack
```

## Trade-off questions

- Why does BFS lose the shortest-path guarantee when edges have different weights?
- When would Dijkstra replace BFS?
- Why can recursive DFS overflow the call stack on a deep graph?
- What does `O(V + E)` mean for an adjacency matrix instead of an adjacency list?
- Why does the visited mark need to happen at discovery time in BFS?

## Product-engineering connection

Graph traversal appears whenever product entities become relationships instead of rows: dependency
graphs, route/path search, project/code maps and knowledge graphs. The important engineering step is
to identify whether I need *reachability*, *shortest unweighted distance*, *ordering*, or *all paths*
before choosing the traversal.

## Evidence check

Explain the maze's BFS path from the recorded parent chain and compare `bfs_peak_nodes` with
`dfs_peak_nodes`; do not reduce the comparison to “BFS is faster” or “DFS uses less memory” as a
universal rule.

