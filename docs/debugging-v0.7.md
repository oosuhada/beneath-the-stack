# v0.7 debugging case study

## Symptom

The debugging lab contains two intentionally disabled-by-default faults:

- heap use-after-free after `delete[]`;
- signed integer overflow in a scheduler-like score calculation.

The default binary is safe. The investigation script is explicit:

```bash
bash tools/run_debugging_case.sh
```

## What happened

ASan did not produce a normal use-after-free report on this macOS run. It aborted inside the ASan
runtime with a `sanitizer_malloc_mac.inc` CHECK failure. That limitation is captured in:

```text
evidence/debugger/v0.7-asan-use-after-free.txt
```

UBSan did produce a useful source-level report for signed integer overflow at
`labs/debugging_case/main.cpp`. The report is captured in:

```text
evidence/debugger/v0.7-ubsan-signed-overflow.txt
```

The machine-readable summary is:

```text
evidence/debugger/v0.7-debugging-case-summary.json
```

## Root cause

The use-after-free fixture reads through a heap pointer after ownership has been released. The fixed
path keeps ownership in a `std::vector` and reads while the object is still alive.

The signed-overflow fixture adds to `INT_MAX`. The fixed path makes the overflow boundary explicit
with a saturating result. In a real scheduler or priority scorer, this kind of bug can invert order
or produce undefined behavior before any queue logic has a chance to be correct.

## Claim boundary

- UBSan source-line evidence is claimed.
- ASan UAF evidence is attempted but not claimed as successful in this environment.
- This is a debugging case study, not proof of complete debugger or sanitizer mastery.

