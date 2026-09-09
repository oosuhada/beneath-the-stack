# ADR-012: Ring buffer overflow is a product decision

## Context

UART and sensor streams can produce bytes while the application is busy. In an embedded context the
safe response is rarely “allocate more memory”. A fixed-size receive buffer needs a documented policy
when it fills.

## Options

1. Reject the newest byte when full.
2. Overwrite the oldest byte when full.
3. Dynamically grow the buffer.

## Decision

Implement options 1 and 2 in `RingBuffer<N>` and make the policy explicit at construction time. Do not
offer dynamic growth in the firmware lab.

## Trade-offs

- Reject-new preserves older bytes and exposes backpressure through a return value/counter.
- Overwrite-oldest keeps the latest stream state but loses history.
- Dynamic growth is useful in many server programs but hides the resource budget that embedded code
  must face.

## Evidence

`labs/firmware_boundary/main.cpp` pushes 12 bytes into 8-byte buffers:

```text
reject policy: 4 rejected bytes
overwrite-oldest policy: 4 overwritten bytes
```

Both are correct depending on the protocol. Neither is universally “better”.
