# 2026-09-09 — firmware boundary without pretending hardware exists

## Question

What changes when software is close enough to hardware that timing, bounded memory, serial bytes and
safe states matter?

## My prediction

I expected the key lesson to be GPIO-style APIs: `pinMode`, `digitalWrite`, timers and maybe UART.
After reading the reference source and building the simulator, the more important lesson was that the
application needs a clear boundary from hardware-specific APIs and must be explicit about failure
policy.

## Hardware probe

Safe checks on the MacBook Air showed only Bluetooth/debug-console style serial entries:

```text
/dev/cu.Bluetooth-Incoming-Port
/dev/cu.BoseQCUltraHeadphones
/dev/cu.OosusBoseQC35II
/dev/cu.debug-console
```

No Pico, ESP32, Arduino, CP210, CH340, FTDI or USB serial keyword appeared in `system_profiler
SPUSBDataType`. This session therefore makes no physical MCU claim.

## Implementation

The firmware core lives in `include/bts/firmware.hpp` and is exercised by
`labs/firmware_boundary/main.cpp`.

It includes:

- a small fixed-capacity ring buffer with reject vs overwrite-oldest policies;
- a framed serial protocol parser: `SOF TYPE LENGTH PAYLOAD CHECKSUM`;
- malformed, oversized, corrupted and truncated packet handling;
- a polling vs interrupt-like latency model;
- a cooperative periodic scheduler with jitter/deadline/overrun accounting;
- a simulated MMIO register bank using bit masks and flags;
- a sensor → filter → state machine → actuator capstone with fault/recovery.

## What broke

The first capstone sequence only showed `IDLE -> ARMED -> FAULT -> RECOVERY -> IDLE`. That was not
enough: it proved fault handling but not the active actuator path. I changed the input sequence to
stay hot long enough to reach `ACTIVE` before injecting a stale/invalid sample.

The second issue was scheduler evidence. A `flash-write` task with 23 ms execution time and 100 ms
period did not actually overrun. The fixture now uses a 130 ms task with a 100 ms period, so the lab
can demonstrate how one long cooperative task damages other deadlines.

## Observation

Quick local sample after the fix:

```text
state transitions:
IDLE -> ARMED
ARMED -> ACTIVE
ACTIVE -> FAULT
FAULT -> RECOVERY
RECOVERY -> IDLE

polling max latency: 990 us
event max latency: 35 us

ring reject policy: 4 rejected bytes
ring overwrite policy: 4 overwritten bytes

protocol faults: checksum=1, oversized=1, timeout=1
```

The periodic scheduler shows the overrun path clearly:

```text
flash-write period: 100 ms
flash-write worst-case execution: 130 ms
flash-write overruns: 2
sensor-sample max jitter: 127 ms
sensor-sample deadline misses: 14
```

## Explanation

Embedded code often cannot allocate more memory or wait for a remote service to recover. The ring
buffer has to choose a policy when full. The state machine has to decide what safe means when the
sensor disconnects or produces an invalid value. The scheduler cannot pretend a long task has no
effect just because the logic is correct eventually.

## What I changed

- Added `firmware-boundary` as an executable lab.
- Added test coverage for ring buffer, protocol parser, scheduler overrun, MMIO bit masks and fault
  recovery.
- Added source-reading notes for FreeRTOS and MCU HAL examples.
- Connected iBridge Studio as a product-level display/device boundary, without claiming it is an MCU
  project.

## Remaining uncertainty

- No physical board was flashed.
- No binary size, stack high-water mark, UART baud timing or GPIO latency was measured.
- I still need one actual Pico/ESP32/Arduino backend before claiming hardware experience.
