# Algorithm pattern map — practice history → mechanism → system use

This is not a copied solution catalog. It is a map from representative problems already present in
classmate/user study histories to the lower-level mechanism implemented or planned in
`beneath-the-stack`. Classmate repositories surveyed here do not expose permissive code licenses, so
only repository/problem links and pattern selection are reused.

## Pattern map

| Pattern | Representative practice evidence | What this lab asks beyond solving it |
| --- | --- | --- |
| Two pointers | `kwongwangjae/java-codingtest`: LeetCode 15 **3Sum**, 42 **Trapping Rain Water**, 125 **Valid Palindrome** | What invariant lets each pointer discard work? When does sorting cost dominate? |
| Sliding window | `kwongwangjae/java-codingtest`: LeetCode 3 **Longest Substring Without Repeating Characters** | Which state must enter/leave the window in O(1), and which data structure maintains it? |
| Prefix sum / difference | `josephuk77/Algorithm_Java`: BOJ 11659, 11660, 19951 | Why does preprocessing turn repeated range work into constant-time queries, and what does it cost to update? |
| Binary search | `josephuk77/Algorithm_Java`: BOJ 1920; `daehyuk1231/AlgorithmStudy`: BOJ 10816 | Which monotonic predicate is actually being searched? What breaks when the ordering invariant is false? |
| Stack | `qqqkyj/algorithm-study`: BOJ 1874, 17298, 9012; `kwongwangjae/java-codingtest`: LeetCode 20, 739 | Why does LIFO encode the unresolved dependency? What is stored on the stack besides values? |
| Queue | `daehyuk1231/AlgorithmStudy`: BOJ 18258, 28279; `kwongwangjae/java-codingtest`: LeetCode 225, 232, 622 | Why is FIFO required, and how do array/ring/linked representations change memory behavior? |
| BFS | `kennedy0919/baekjoon`: BOJ 2178, 1697, 7569, 14940; `daehyuk1231/AlgorithmStudy`: Programmers 1844 | Why is the first unweighted visit shortest? How large can the frontier become? |
| DFS / backtracking | `kwongwangjae/java-codingtest`: LeetCode 39, 46, 77, 78; `daehyuk1231/AlgorithmStudy`: Programmers 43165 | What state is reversible, and how does recursion map to stack frames? |
| Topological sort | `kwongwangjae/java-codingtest`: LeetCode 207 **Course Schedule** | What does in-degree represent, and how is cycle detection tied to processed-node count? |
| Shortest path | `kennedy0919/baekjoon`: BOJ 1753, 1504, 1916, 1238, 4485; `kwongwangjae/java-codingtest`: LeetCode 743, 787 | Why does BFS stop being sufficient when edge weights appear? When is a priority queue stale? |
| Heap / priority queue | `kwongwangjae/java-codingtest`: LeetCode 23, 347, 973 | Why is partial order enough for repeated priority selection? When is a linear scan better for tiny N? |
| Hashing | `kwongwangjae/java-codingtest`: LeetCode 49, 706, 771; `daehyuk1231/AlgorithmStudy`: Programmers 42577, 42578, 42579 | What makes average O(1) plausible? How do load factor, collisions and resizing alter it? |
| Greedy | `oosuhada/codetest-study`: `this-is-coding-test/0401_greedy_big_number_rule.py`, `0402_greedy_big_number_rule2.py`; `Minji6/algolog`: Large Numbers / Divide Until 1; `josephuk77/Algorithm_Java`: BOJ 1931, 11047 | What exchange/local-choice argument makes the greedy step safe? Where does that proof fail? |
| Dynamic programming | `qqqkyj/algorithm-study`: BOJ 1463, 1149, 2579, 9465, 11053 | What repeated subproblem is memoized, what is the state dimension, and can memory be compressed? |
| Union-find | The v0.2 library implements path compression + union by rank; the surveyed histories do not yet provide a strong repeated DSU corpus. | Treat the missing practice corpus as a gap instead of manufacturing evidence. Add representative connectivity/MST problems in a later practice cycle. |

## How to use the map

For each pattern the target flow is:

```text
representative problem history
        ↓
name the invariant/pattern
        ↓
implement the underlying structure/mechanism
        ↓
test edge cases
        ↓
measure a workload where the choice matters
        ↓
connect it to a real system decision
```

The practice archive remains where solution attempts live. This repository stores the mechanism,
the evidence and the explanation.

