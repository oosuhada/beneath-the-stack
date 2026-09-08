# Raw TCP / HTTP keep-alive

## 30-second explanation

TCP gives applications a reliable ordered byte stream between two endpoints; it does not know what an
HTTP request is. HTTP/1.1 defines how those bytes are framed into request/response messages. The lab
opens real loopback sockets, parses the header terminator, writes `Content-Length`, and compares one
TCP connection per request with multiple HTTP requests over a keep-alive connection.

## 2-minute explanation

At framework level, `GET /health` looks like one function call. Below it, several responsibilities
exist: create a socket, bind/listen on the server, connect from the client, accept a connection, read a
byte stream until enough bytes form a request, send a valid HTTP response and decide whether the
connection stays open.

HTTP keep-alive matters because connection setup is work. On a real network that includes transport
handshakes and latency; even on loopback the kernel/socket setup cost is measurable. Reusing a
connection amortizes that setup across requests.

The v0.1 server is deliberately tiny. It handles concurrent accepted connections with one thread per
connection and only enough HTTP/1.1 framing for the experiment. It is not a production parser and
does not claim TLS, request-body handling, security hardening or full RFC compliance.

## Explain it from code

- `labs/raw_http/main.cpp` — socket lifecycle, accept loop, request framing, keep-alive client.

Trace the syscall-level shape:

```text
server: socket → bind → listen → accept → recv/send → close
client: socket → connect → send/recv → reuse or close
```

## Trade-off questions

- Why is TCP a stream rather than a message protocol?
- Why can one `recv()` return half a request or multiple pieces over time?
- What does `Content-Length` solve in the response parser?
- What resources does a long-lived keep-alive connection consume?
- How do connection pooling, HTTP/2 multiplexing and TLS change the picture?

## Product-engineering connection

Next.js, FastAPI, Spring and reverse proxies replace most of this code with tested infrastructure.
Knowing the raw path changes debugging: “the API is slow” can mean DNS, connection setup, queueing,
TLS, server processing, response framing or connection reuse rather than one application handler.

## Evidence check

Explain why loopback timing proves only local connection-reuse overhead, not internet latency, and why
the concurrent-client result should not be turned into a production throughput claim.

