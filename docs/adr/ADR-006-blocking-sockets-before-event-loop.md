# ADR-006: Why blocking sockets remain the first networking implementation

## Context

The next networking topic could jump directly to an event loop, but that would hide the blocking
failure mode the event loop is supposed to solve.

## Options

1. Replace the lab with `kqueue`/`epoll` immediately.
2. Keep blocking sockets and add serial vs thread-per-client comparison.
3. Use a framework and measure only the framework.

## Decision

Keep direct blocking POSIX sockets and compare serial blocking handling against thread-per-client
handling for a slow route.

## Trade-offs

- The lab is still not a scalable server.
- The result is easier to reason about from source and traces.
- It creates a concrete reason to implement event-driven I/O later.

## Evidence

- `labs/raw_http/main.cpp`
- `include/bts/http.hpp`
- `tests/mastery_tests.cpp`
- `docs/notebook/2026-09-08-network-blocking-http.md`
