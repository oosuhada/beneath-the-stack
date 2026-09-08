# AI-assisted work does not equal systems understanding

This repository is intentionally built with help from an AI coding agent. That is consistent with
how I build software: I use tools aggressively, but I do not treat generated code as proof of
understanding.

For a systems topic to count, it needs evidence that survives outside the chat window:

```text
question
→ prediction
→ source reading
→ smallest implementation
→ correctness test
→ intentional failure
→ trace / sanitizer / assembly / benchmark
→ trade-off explanation
→ product application when it is genuinely useful
```

The AI can produce code quickly. The repository should show the slower parts: wrong assumptions,
failed runs, measured behavior, and places where I chose not to apply a technique because it would
be worse engineering.

## What I will not hide

- Some implementation scaffolding was AI-assisted.
- A clean-looking explanation is not enough for mastery.
- Several experiments produced wrong or unhelpful measurements before being corrected.
- macOS sanitizer support was weaker than expected in this local environment.
- Toy implementations are deliberately not described as production-grade kernels, databases,
  allocators, or HTTP servers.

## What counts as stronger evidence

- `tests/differential_tests.cpp` compares custom structures against standard-library references.
- `labs/allocator/main.cpp` includes a no-reuse bump allocator failure and a no-coalescing
  fragmentation failure.
- `labs/virtual_memory/main.cpp` deliberately touches a guard page in a child process and records
  the signal instead of crashing the parent.
- `evidence/assembly/allocator-O0.s` and `evidence/assembly/allocator-O2.s` record local compiler
  output so optimization claims can be checked.
- Product repositories contain actual code changes, not only links back to this repository.
