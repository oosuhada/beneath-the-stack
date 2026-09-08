# Raw TCP / HTTP / connection lifetime

## 1. What is it?

TCP is a reliable ordered **byte stream** between endpoints. It does not preserve application
message boundaries. HTTP/1.1 defines how request/response messages are represented on that stream.

This lab owns the path that a framework normally hides:

```text
socket → connect / accept → send / recv → HTTP parse → response framing → reuse / timeout / close
```

`include/bts/http.hpp` parses the request line and normalized headers. `labs/raw_http/main.cpp` opens
real POSIX loopback sockets and compares one connection per request, one keep-alive connection,
multiple reusable pooled connections and a deliberately slow response that triggers receive timeout.

## 2. Why does it work?

TCP provides ordered delivery, so an application can keep reading until it has enough bytes to parse
an HTTP message. That does **not** mean one `recv()` equals one request: reads can split headers or
return bytes in different chunk sizes. The parser therefore waits for the HTTP header terminator and
then interprets the request line/headers independently from the socket read size.

Keep-alive amortizes connection setup across multiple HTTP messages. A connection pool generalizes
that idea: instead of creating a socket for every logical request, callers reuse a bounded set of
already-connected transports. The pool does not make HTTP inherently faster; it avoids repeatedly
paying setup and reduces connection churn when reuse is valid.

The receive timeout demonstrates another hidden contract. A connection can stay established while
the peer is too slow for the caller's latency budget. Socket timeout turns that waiting state into an
observable failure instead of an unbounded block.

## 3. When does it fail?

- A parser that assumes one `recv()` contains a complete request fails on normal TCP segmentation.
- Keep-alive can retain file descriptors and server resources longer than expected.
- A pool can hand out stale/broken connections and needs health/eviction rules in production.
- Timeouts without retry policy can turn transient latency into user-visible failure; retries without
  idempotency/backoff can duplicate work or amplify an outage.
- The v0.2 parser intentionally handles only the subset required by the lab. It is not a full RFC
  implementation, request-body parser, TLS stack or security-hardened HTTP server.
- Loopback measurements isolate local kernel/socket overhead; they do not represent DNS, TLS,
  internet RTT, packet loss or remote-server queueing.

## 4. Where did I use it?

The immediate product connection is diagnostic rather than a claim that the toy server replaced a
framework. Repositories such as `soundtrack-map-server`, `AskOosu` and `source-archive` sit above
HTTP clients/servers, reverse proxies or storage endpoints. The lab provides a concrete model for
questions such as:

```text
slow request
├── connection setup?
├── connection reuse?
├── socket wait / timeout?
├── application handler?
└── downstream service?
```

Level 5 is not awarded yet because v0.2 did not modify one of those products based on the HTTP lab.
That is intentional: recognizing a connection is not the same as demonstrating an applied change.

## Code walk

- `include/bts/http.hpp` — request-line/header representation and malformed-input rejection.
- `tests/mastery_tests.cpp` — parser correctness and malformed request cases.
- `labs/raw_http/main.cpp` — server/client lifecycle, keep-alive, connection pool and receive timeout.
- `tools/run_labs.py` — captures the HTTP benchmark with machine/compiler metadata.

## Verification prompts

1. Why can one `recv()` return only part of an HTTP header?
2. What cost does keep-alive avoid, and what resource does it keep occupied?
3. Why is a pool more than “keep one socket open”?
4. What is the difference between connect timeout, read timeout and application deadline?
5. When is retry unsafe even if a request timed out?
6. Why does HTTP/2 change the connection-pool discussion without making TCP disappear?

## Evidence rule

Any performance claim must name the request count, connection strategy, warm-up/repetitions,
machine and the fact that transport is POSIX loopback. The timeout result proves that the configured
failure path is observable; it does not establish a production timeout value.
