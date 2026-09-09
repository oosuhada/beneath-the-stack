# Defense: embedded boundary

## 30 seconds

The firmware work is simulator-first. It proves timing, state, protocol, ring buffer and MMIO concepts
without claiming physical board experience.

## Applied path

- `include/bts/firmware.hpp::ProtocolParser` is reused by the capstone network path.
- `RingBuffer` moves from UART-style receive buffering into loopback TCP receive buffering.
- The capstone adopts bounded-memory thinking from the firmware track: overload becomes explicit
  rejection, not hidden heap growth.

## Failure questions

- What changes when this moves to a real Pico or ESP32?
- What does ISR context restrict that this simulator does not?
- How would stack usage, binary size and timer jitter be measured on a board?
- Why does a virtual display product bridge not count as GPIO experience?

## Remaining gap

Physical GPIO, UART timing, interrupt latency, board flashing and RTOS integration remain future
work. The project keeps those claims at Level 0 until hardware evidence exists.
