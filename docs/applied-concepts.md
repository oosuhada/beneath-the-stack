# Concept → existing product map

Level 5 in the mastery ledger requires a real-project artifact. A vague statement such as “hash
maps are used in web apps” is not enough.

| Concept | Systems-lab evidence | Existing product evidence | Decision / application |
| --- | --- | --- | --- |
| Atomic claim / check-then-act race | concurrency lab separates atomic access from compound atomicity | `browser-reliability-runtime/src/local-llm/queue.ts`, `worker.ts` | **Applied:** queue claim now uses a filesystem `rename` as the pending/blocked → running ownership boundary; a two-contender regression test proves one winner. |
| Atomic file-state visibility | storage/page lab separates bytes on disk from complete logical records | `browser-reliability-runtime/src/local-llm/queue.ts`, `queue-storage.test.ts` | **Applied:** queue JSON state is now written to a same-directory temporary file and published with `rename`, so queue readers see complete `.json` records rather than partial writes. |
| Bounded queue / memory growth | linked queue + memory-locality lab | `memory-atlas-server/src/MessageHistory.cpp` | **Applied:** limited history reads keep only the newest N lines instead of retaining the whole file; tests preserve `limit=0` and ordering semantics. |
| Path component as storage boundary | process/FD and storage labs treat filenames as OS-visible resources | `memory-atlas-server/src/MessageHistory.cpp`, `tests/test_message_history.cpp` | **Applied:** room/user identifiers are sanitized before they become history filenames, preventing `../`-style traversal from escaping the intended directory. |
| Priority queue / scheduler | binary heap + earliest-deadline toy scheduler | `elevator-queue-lab/app/dispatch.py`, simulator/policy evidence | **Reviewed, intentionally not forced:** only six elevator cars are scored and scores change with state. A heap is not automatically superior to a small scan. |
| Thread synchronization | mutex/atomic lab | `memory-atlas-server` uses Boost.Asio strands plus mutex-protected maps/history | **Mapped:** distinguishes event-loop serialization, strand affinity and shared-state mutexes. No synchronization primitive was replaced without contention evidence. |
| HTTP parsing / keep-alive / timeout | raw socket lab now parses request lines/headers, pools connections and observes receive timeout | `soundtrack-map-server` HTTP backend and `AskOosu` API-facing workloads | **Mapped:** framework request clients inherit the same connection reuse/timeout trade-off; a product change is deferred until an actual connection profile is captured. |
| State machine / retry | deterministic embedded thermal state machine; concurrency failure/recovery reasoning | `browser-reliability-runtime` recovery policies and queue retry transitions | **Applied conceptually + queue atomicity change:** state transitions have ownership, timeout and retry invariants rather than being UI status labels. |
| Page / index / scan | 4 KiB pager + persisted rows + B+ tree row locations | PostgreSQL-backed services in the portfolio | **Bridge ready:** next milestone is a captured `EXPLAIN (ANALYZE, BUFFERS)` from a real product query, not a claim that the toy engine behaves exactly like PostgreSQL. |
| Hardware boundary | `DigitalOutput` HAL + deterministic simulated sensor/state machine | `iBridge-Studio` display/device boundary work | **Mapped only:** no claim of GPIO/firmware use. Future physical Pico/ESP32 code should implement the same seam where appropriate. |
| Cache locality / allocation | contiguous vs pointer-chasing experiment; stack vs heap touch | C++ `memory-atlas-server` | **Applied to analysis:** identified a concrete whole-file history retention issue and replaced it with bounded tail storage. This is an algorithmic memory-footprint improvement, not a claim of CPU-cache acceleration. |

## What “applied” does not mean

- It does not mean “I found the same keyword in another repository.”
- It does not mean every toy benchmark generalizes to production.
- It does not justify changing a production data structure when N is tiny or the update pattern is different.
- It does not count a planned optimization until the real repository contains a tested artifact.

