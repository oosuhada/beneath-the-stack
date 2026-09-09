# ADR-011: Simulator-first firmware boundary

## Context

No Pico, ESP32, Arduino or USB serial device was detected on the MacBook Air. The project still needs
to move from OS abstractions toward device I/O, firmware architecture and hardware-style constraints.

## Options

1. Add Arduino/Pico tutorial code and mark it as embedded progress.
2. Skip embedded work until physical hardware is available.
3. Build the firmware core behind HAL-style seams and run it against a deterministic simulator.

## Decision

Use option 3.

The repository now contains a simulator-first firmware core that models sensor input, actuator
output, a monotonic clock, serial framing, ring-buffer resource limits, periodic scheduling, MMIO bit
masks and injected faults. README and evidence explicitly state that no physical MCU timing is
claimed.

## Trade-offs

- Good: application logic can be tested without board access.
- Good: fault injection is deterministic and repeatable in CI.
- Good: future Pico/ESP32/Arduino backends can implement the same seams.
- Bad: no GPIO voltage, UART baud error, ISR priority, DMA, binary size or stack high-watermark is
  measured yet.

## Evidence

- `include/bts/firmware.hpp`
- `labs/firmware_boundary/main.cpp`
- `tests/mastery_tests.cpp`
- `docs/notebook/2026-09-09-firmware-boundary.md`
- `docs/source-reading/mcu-hal-gpio-timer-serial.md`
