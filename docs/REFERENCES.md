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

No external source file is vendored in v0.1.

