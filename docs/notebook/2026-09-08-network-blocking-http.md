# 2026-09-08 — socket and blocking HTTP notebook

## Question

Why does an HTTP framework need connection management, timeouts and concurrency instead of just
calling `recv()` and `send()` in a loop?

## My prediction

Keep-alive should reduce repeated TCP connection overhead on loopback. A serial blocking server
should be much worse than thread-per-client handling when multiple clients hit a deliberately slow
route.

## Implementation

`labs/raw_http/main.cpp` still uses direct POSIX calls:

```text
socket → bind → listen → accept → recv → parse → send → close
```

v0.3 adds:

- accepted connection count;
- bytes received and sent;
- parser limits for header bytes and header count;
- mandatory single `Host` header for this toy HTTP/1.1 parser;
- thread-per-client vs serial blocking handling of concurrent slow requests.

## What broke

The earlier parser accepted inputs that were too friendly. It now rejects malformed header names,
missing Host, duplicate/no Host, oversized headers and incomplete blocks. The fuzz-like fixed-seed
mutation test intentionally produces both accepted and rejected inputs and checks invariants for
accepted cases.

## Observation

The lab now reports not only latency, but also connection/byte counters and separate benchmarks for:

- new connection per request;
- persistent keep-alive;
- connection-pool reuse;
- concurrent keep-alive;
- thread-per-client slow requests;
- serial blocking slow requests.

## Explanation

A single blocking accept/handle loop is conceptually simple and useful for learning. It also makes
head-of-line blocking obvious: while one connection is sleeping or waiting for I/O, later clients
cannot progress through the same handler. Thread-per-client moves the blocking wait onto separate
kernel-scheduled execution contexts. An event loop is another answer to the same pressure, but this
repo has not implemented `kqueue`/`epoll` yet.

## Remaining uncertainty

This is not a production HTTP parser. It ignores request bodies, chunked encoding, TLS, header
folding compatibility, backpressure, slowloris protection and many RFC details.
