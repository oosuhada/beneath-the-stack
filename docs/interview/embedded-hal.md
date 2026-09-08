# Embedded HAL and deterministic state machine

## 1. What is it?

A hardware-abstraction layer separates policy/state logic from the physical driver used to read or
write a device. v0.2 defines a `DigitalOutput` seam and drives it with scripted temperatures rather
than pretending a physical sensor exists.

## 2. Why does it work?

The same thermal state machine can consume deterministic simulator events today and a real sensor/
timer/interrupt adapter later. Hysteresis uses separate on/off thresholds so noisy input near one
threshold does not chatter the actuator.

Code: `include/bts/embedded.hpp`, `labs/embedded_sim/main.cpp`.

## 3. When does it fail?

The simulator does not model electrical timing, interrupt latency, debounce, ADC noise, watchdogs,
power behavior or RTOS scheduling. Passing these tests is **not hardware experience**.

## 4. Where did I use it?

`iBridge-Studio` is the existing hardware-adjacent product bridge: display/device communication and
OS boundaries make the abstraction relevant, but no iBridge source is changed merely to manufacture
an embedded claim. Physical Pico/ESP32 evidence is a later milestone.

