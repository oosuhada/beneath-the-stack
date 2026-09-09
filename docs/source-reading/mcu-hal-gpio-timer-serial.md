# MCU HAL source reading: GPIO, timer, UART and bit boundaries

## Question

What changes when a program talks to physical pins and serial bytes rather than files and sockets?

## Hardware status

No Raspberry Pi Pico, ESP32, Arduino or USB serial adapter was detected on the MacBook Air during this
session. This reading is therefore a source bridge for simulator-first firmware architecture, not a
record of board flashing or electrical measurement.

## References checked out

```text
../_systems-reference/pico-examples       0d62f75bafc2c8120d3276c3343d1a9195e909e9
../_systems-reference/ArduinoCore-avr    11b9130371e8447920edb65a75706a6c951e51fc
../_systems-reference/esp-idf            c712a0dde385d659a1470a136251980d31a70bc1
```

## Narrow source areas read

### Pico examples

Relevant patterns:

```text
blink/blink.c
- gpio_init
- gpio_set_dir
- gpio_put

timer/hello_timer/hello_timer.c
- add_repeating_timer_ms

pio/uart_rx/uart_rx.c and uart_rx_intr.c
- UART/PIO receive examples
```

### Arduino AVR core

Relevant patterns:

```text
cores/arduino/wiring_digital.c
- pinMode
- digitalWrite
- digitalRead

cores/arduino/wiring.c
- TIMER0 overflow ISR used by millis-style timekeeping

cores/arduino/HardwareSerial.cpp
- HardwareSerial::write
```

### ESP-IDF

Relevant patterns:

```text
examples/system/freertos/*
- xTaskCreate / xTaskCreatePinnedToCore examples

examples/system/light_sleep/main/uart_wakeup.c
- uart_driver_install

examples/system/esp_event/default_event_loop/main/main.c
- esp_timer_start_periodic

examples/*
- gpio_config / gpio_set_level usage
```

## What the code appears to do

The APIs look simple at the call site, but they represent different boundaries:

```text
GPIO write
  -> configure pin direction/function
  -> set or clear a bit that eventually drives a physical pin

timer callback
  -> hardware/RTOS time source
  -> callback/interrupt-like dispatch
  -> application must finish before the next deadline or defer work

UART/serial
  -> bytes arrive independently of application parsing
  -> firmware needs a bounded receive buffer and packet framing
```

## My toy implementation

`include/bts/firmware.hpp` models these boundaries as:

- `SimulatedMmio` for bit masks, flags and register-style access;
- `RingBuffer<N>` for UART/sensor stream buffering;
- `ProtocolParser` for `SOF TYPE LENGTH PAYLOAD CHECKSUM` framing;
- `compare_polling_and_events()` for polling vs interrupt-like latency;
- `FirmwareController` for sensor → state machine → actuator logic.

## Important differences

- The simulator has no real GPIO voltage, UART baud rate, clock drift, DMA or ISR priority.
- No board binary size, RAM usage or stack usage is measured yet.
- The code is intended to keep application logic independent from board-specific APIs, not to claim a
  Pico/ESP32/Arduino port exists.

## What remains unclear

- Which exact board/toolchain should become the first hardware backend.
- How much jitter comes from the MCU timer, RTOS scheduling and serial ISR under real load.
- Whether the first hardware experiment should prioritize GPIO/timer simplicity or UART/protocol
  realism.
