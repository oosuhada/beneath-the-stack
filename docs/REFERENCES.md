# References, source audit and attribution

## Classmate repository survey

These public repositories were inspected using authenticated `gh`/`git` tooling from the MacBook Air
to understand how classmates organize algorithm study material.

| Repository | What was useful to inspect | License result | Adoption decision |
| --- | --- | --- | --- |
| [`woovii000/CodingTest`](https://github.com/woovii000/CodingTest) | automated per-problem archive structure across Programmers exercises | GitHub metadata returned no explicit license | **No code copied.** Used only to confirm that this project should not become an auto-pushed solution archive. |
| [`qqqkyj/algorithm-study`](https://github.com/qqqkyj/algorithm-study) | Java/BOJ roadmap, progress table and problem-count goal | GitHub metadata returned no explicit license | **No code copied.** The mastery/evidence model here was designed as a deliberate alternative to problem counts. |
| [`kwongwangjae/java-codingtest`](https://github.com/kwongwangjae/java-codingtest) | per-problem Java + notes organization across common interview topics | GitHub metadata returned no explicit license | **No code copied.** Topic coverage informed the survey only. |
| [`qqqkyj/backend-interview-question`](https://github.com/qqqkyj/backend-interview-question) | question-oriented interview review format | repository metadata had no detected SPDX license; README states a CC BY-NC-SA content license | **No text/code copied.** Interview documents in this repository are newly written around the user's requested 30-second / 2-minute / code / trade-off format. |
| [`qqqkyj/sesac-fullstack-training`](https://github.com/qqqkyj/sesac-fullstack-training) | long-running Java/full-stack/database course record | GitHub metadata returned no explicit license | **No code copied.** Used only to compare long-form study organization. |
| [`Minji6/algolog`](https://github.com/Minji6/algolog) | team-separated Python practice history, gradual Programmers progression, *This Is Coding Test* greedy review | GitHub metadata returned no explicit license | **No code copied.** Used for curriculum/practice cadence and representative problem selection. |
| [`Minji6/minji-algolog`](https://github.com/Minji6/minji-algolog) | synchronized standalone Python algorithm history | GitHub metadata returned no explicit license | **No code copied.** Used only as learning-history evidence. |
| [`kennedy0919/baekjoon`](https://github.com/kennedy0919/baekjoon) | concentrated graph/BFS/shortest-path practice across BOJ Silver/Gold | GitHub metadata returned no explicit license | **No code copied.** Representative graph problem IDs are linked in `algorithm-patterns.md`. |
| [`josephuk77/Algorithm_Java`](https://github.com/josephuk77/Algorithm_Java) | Java practice with useful prefix-sum, binary-search and greedy examples | GitHub metadata returned no explicit license | **No code copied.** Used only for representative pattern/problem mapping. |
| [`daehyuk1231/AlgorithmStudy`](https://github.com/daehyuk1231/AlgorithmStudy) | compact Java curriculum spanning queue/hash/graph/DFS practice | GitHub metadata returned no explicit license | **No code copied.** Used only for representative pattern/problem mapping. |

Because the surveyed algorithm repositories did not expose a permissive source-code license, the
safe rule for v0.1 was simple: inspect structure, copy zero implementation code, and write every data
structure/lab specifically for `beneath-the-stack`.

## Technical reference direction

The v0.1 implementation intentionally depends on C++20 and POSIX socket behavior rather than pulling
third-party educational code. Future tracks should prefer primary sources when connecting the toy
implementation to production behavior:

- C++ standard-library concurrency primitives for mutex/atomic semantics;
- POSIX socket interfaces for TCP experiments;
- PostgreSQL documentation and `EXPLAIN (ANALYZE, BUFFERS)` output when the database-internals track
  adds a real PostgreSQL bridge;
- device-vendor documentation when ESP32/Arduino/Raspberry Pi hardware is actually introduced.

No external source file is vendored in v0.1 or v0.2.

## External curriculum and implementation references

All entries below were inspected with `gh` from the MacBook Air. “Useful” describes the idea or
source-reading target adopted; it does not imply source transplantation.

| Repository | License observed | What was useful | What was intentionally not copied |
| --- | --- | --- | --- |
| [`jwasham/coding-interview-university`](https://github.com/jwasham/coding-interview-university) | CC-BY-SA-4.0 | interview-fundamental breadth and its explicit motivation to implement structures that languages usually provide | checklist text, course list, answers |
| [`ossu/computer-science`](https://github.com/ossu/computer-science) | MIT | domain taxonomy and sequencing from core CS toward OS/networking | curriculum tables/course descriptions |
| [`codecrafters-io/build-your-own-x`](https://github.com/codecrafters-io/build-your-own-x) | no license detected in GitHub metadata/root during audit | build-a-small-version-first philosophy | tutorial text/code; repository contents are only a directional index here |
| [`TheAlgorithms/Python`](https://github.com/TheAlgorithms/Python) | MIT | breadth and edge-case organization | implementations |
| [`TheAlgorithms/C-Plus-Plus`](https://github.com/TheAlgorithms/C-Plus-Plus) | MIT | C++ structure/test organization | implementations |
| [`trekhleb/javascript-algorithms`](https://github.com/trekhleb/javascript-algorithms) | MIT | per-concept explanation organization and graph-algorithm taxonomy | code and README prose |
| [`mit-pdos/xv6-riscv`](https://github.com/mit-pdos/xv6-riscv) | root permissive MIT-style license text | concrete source bridge for process, syscall, VM, FD, pipe, lock and context-switch concepts | kernel source; this repo keeps independent toy experiments |
| [`cstack/db_tutorial`](https://github.com/cstack/db_tutorial) | MIT | progression from row storage to page/pager/B-tree concepts | C implementation/tutorial code |
| [`redis/redis`](https://github.com/redis/redis) | Redis 8 current tree is tri-licensed RSALv2/SSPLv1/AGPLv3; older 7.2-and-prior license differs | source-reading targets for event loop, networking, expiration and persistence (`ae.c`, `networking.c`, `expire.c`, `rdb.c`, `aof.c`) | all Redis code |
| [`tokio-rs/mini-redis`](https://github.com/tokio-rs/mini-redis) | MIT | small async service boundaries: frame/parser/connection/server/shared DB/shutdown and connection limiting | Rust implementation |
| [`rui314/chibicc`](https://github.com/rui314/chibicc) | MIT | future compiler sequence: tokenize → preprocess → parse/AST → code generation | compiler source |
| [`raspberrypi/pico-examples`](https://github.com/raspberrypi/pico-examples) | BSD-3-Clause | future GPIO/IRQ examples after physical Pico hardware exists | hardware code |
| [`espressif/esp-idf`](https://github.com/espressif/esp-idf) | Apache-2.0 | future HAL/driver/RTOS boundary study | framework/driver code |
| [`arduino/ArduinoCore-avr`](https://github.com/arduino/ArduinoCore-avr) | no root license detected in this audit | future source-reading context only | all code |
| [`FreeRTOS/FreeRTOS-Kernel`](https://github.com/FreeRTOS/FreeRTOS-Kernel) | MIT | future queue/scheduler/RTOS source bridge | kernel code |

## Practice-volume observations

The peer survey was intentionally quantitative enough to understand learning style without treating
commit count as mastery. At audit time `woovii000/CodingTest` exposed roughly 1,200+ code files and
about 1,250 commits; its tree was mostly Python with a substantial Java set. `kwongwangjae/java-codingtest`
had hundreds of Java problem files/notes, while `Minji6/algolog` recorded hundreds of Python practice
artifacts. That repetition is the habit worth importing. The implementation code is not.

