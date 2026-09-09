# Defense: networking and parser

## 30 seconds

TCP is a byte stream, not a message API. The capstone sends a binary frame in fragments, receives it
through a bounded ring buffer, and only turns it into a command after the length and checksum pass.

## Applied path

- `labs/durable_job_runtime/main.cpp::run_network_campaign` opens a loopback TCP server and clients.
- Clients intentionally split one frame into multiple writes.
- The server uses `recv` chunks, pushes bytes into `RingBuffer`, and feeds `ProtocolParser` byte by
  byte.
- `parse_submit_command` rejects malformed payloads before runtime admission.

## Failure questions

- What happens when one `recv` returns half a frame?
- Why is a length field necessary?
- Why is a checksum useful even on loopback?
- What is not covered by this test? DNS, TLS, packet loss, remote RTT and event-loop scalability.

## Deep follow-up

The parser has explicit states: wait for SOF, type, length, payload and checksum. Oversized payloads
reset the parser. A corrupt checksum increments error stats and does not emit a frame. This mirrors
the firmware parser introduced in v0.5 and reuses it in a networked capstone instead of leaving it as
an embedded-only toy.
