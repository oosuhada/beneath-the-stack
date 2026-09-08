# ADR-007: Why queue JSON writes use temp-file + rename

## Context

`browser-reliability-runtime` already used filesystem `rename` as an ownership boundary for queue
claiming. The remaining issue was queue file content: a direct write can expose a partially written
JSON file if a process crashes mid-write.

## Options

1. Continue direct `writeFile(target, json)`.
2. Write to a temporary file in the same directory, then `rename(temp, target)`.
3. Move to a database-backed queue immediately.

## Decision

Use same-directory temp-file writes followed by `rename()` for queue JSON state transitions.

## Trade-offs

- This improves atomic visibility of complete JSON files but is not a full durable database.
- A database-backed queue would handle more cases, but would be a larger architectural change.

## Evidence

- `browser-reliability-runtime/src/local-llm/queue.ts`
- `browser-reliability-runtime/src/local-llm/queue-storage.test.ts`
- `browser-reliability-runtime/.github/workflows/ci.yml`
