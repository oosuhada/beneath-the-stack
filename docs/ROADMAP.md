# Roadmap

The roadmap grows by evidence-bearing labs, not by adding topic names to a checklist.

## v0.1 — foundation

- [x] hash table: chaining + open addressing + resize + benchmark
- [x] heap: binary heap + priority scheduler demo + benchmark
- [x] BFS/DFS: traversal + shortest path + frontier observation
- [x] concurrency: lost-update race pattern + mutex + atomic
- [x] networking: raw TCP + handwritten HTTP/1.1 + keep-alive + concurrent clients
- [x] database internals: B+ tree + point lookup + linked-leaf range scan + scan comparison
- [x] interview explanation docs
- [x] deterministic tests, warning-as-error lint and CI
- [x] thin local observer fed by real experiment JSON

## v0.2 — memory, OS and algorithm breadth

### Algorithms / data structures

- array/string layout and cache-friendly traversal lab;
- linked list versus contiguous vector locality experiment;
- BST versus balanced-tree motivation;
- binary search and branch behavior;
- sorting families with input-shape experiments;
- greedy counterexample lab;
- basic dynamic-programming state-space lab.

### OS / memory / concurrency

- stack versus heap allocation lifetime and cost;
- allocator/free-list experiment and fragmentation visualization;
- page size, page touch and page-fault observation;
- syscall versus userspace call boundary experiment;
- file descriptors and descriptor exhaustion;
- intentional deadlock represented as a wait-for graph;
- lock ordering and timeout recovery;
- semaphore bounded-buffer lab;
- async I/O abstraction with macOS `kqueue` and Linux `epoll` adapters.

## v0.3 — networking and PostgreSQL bridge

- UDP echo and packet-loss/retry simulator;
- minimal DNS query encoder/decoder;
- TCP retransmission observation using controlled local fault injection where available;
- HTTP parser limits, request body handling and connection pool;
- PostgreSQL schema + repeatable fixture loader;
- `EXPLAIN (ANALYZE, BUFFERS)` capture for sequential scan versus index scan;
- B+ tree lab mapped explicitly to PostgreSQL page/index vocabulary;
- transaction/isolation experiments;
- MVCC visibility timeline;
- WAL/checkpoint observation.

## v0.4 — beyond web / embedded boundary

Hardware is not claimed until hardware exists.

1. define a tiny HAL interface for digital input/output, timer and serial transport;
2. implement a deterministic simulator/mock backend on the MacBook Air;
3. model `input → interrupt/event → state transition → output`;
4. add protocol traces and tests with the simulator;
5. only after a physical device is connected, add ESP32/Arduino/Raspberry Pi adapters;
6. record board, firmware version, wiring and measured behavior as evidence.

The simulator milestone proves architecture only. It does not count as GPIO or embedded-hardware
experience.

