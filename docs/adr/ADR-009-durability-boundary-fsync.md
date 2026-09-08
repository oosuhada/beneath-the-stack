# ADR-009: Treat `fsync` as an explicit durability boundary

## Context

The OS boundary lab asks whether successful `write()` means durable storage. It does not. A write can
complete into kernel buffers while the storage device has not necessarily committed the data.

## Options

1. Keep product file writes as ordinary buffered writes.
2. Always force every product file write through `fsync`.
3. Add explicit durability boundaries only where a small file represents externally visible state or
   where users opt into stronger persistence.

## Decision

Use option 3.

- `browser-reliability-runtime` local queue state uses temp-file write, `datasync`, atomic rename and
  best-effort directory sync before the JSON state is published.
- `memory-atlas-server` history append keeps normal append behavior by default but supports
  `CHERRY_HISTORY_DURABLE_WRITES=1` for `fsync` after each appended record.

## Trade-offs

- Stronger file boundaries cost extra syscalls and may reduce throughput.
- Directory sync is not portable on every filesystem, so it is best-effort in the Node queue.
- The Memory Atlas env flag avoids imposing fsync latency on every chat history write by default.

## Evidence

- `labs/os_boundary/main.cpp` compares `write+close` and `write+fsync+close`.
- `browser-reliability-runtime/src/local-llm/queue.ts` implements queue state publish.
- `memory-atlas-server/src/MessageHistory.cpp` implements optional durable append.
