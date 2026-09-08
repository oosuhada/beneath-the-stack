# Process, pipe, syscall boundary and file descriptor

## 1. What is it?

A process owns an isolated virtual address-space view plus kernel-managed resources. A file
descriptor is a small process-local integer referring through kernel tables to an open file/socket/
pipe object; it is not the underlying resource itself.

## 2. Why does it work?

`fork()` creates a child process with a logically separate memory image. The lab writes `99` into a
child-local integer while the parent remains `7`. A pipe provides an explicit kernel-mediated byte
channel between the processes. `dup()` creates a second descriptor referring to the same underlying
open-file description, so the two descriptors share a file offset; reading `ab` from the first then
`cd` from the duplicate makes that relationship visible.

Code: `labs/process_fd/main.cpp`. Kernel bridge: `docs/xv6-bridge.md`.

## 3. When does it fail?

- A forked child does not magically share ordinary mutable memory with its parent.
- Descriptor integers can be reused after close; caching an integer is not ownership.
- A pipe can block when empty/full; lifecycle and close semantics matter.
- The syscall timing in this repo is a macOS observation, not a universal CPU/kernel constant.

## 4. Where did I use it?

Network servers such as `memory-atlas-server` ultimately hold sockets as OS descriptors even when
Boost.Asio/Beast presents higher-level objects. The lab supplies the ownership model used when
reasoning about socket lifetime, async completion and shutdown.

