# iBridge Studio product bridge: display pipeline as a device boundary

## Question

How does the firmware v0.5 work connect to an existing product without pretending iBridge Studio is a
microcontroller project?

## Repository inspected

```text
../iBridge-Studio
branch deploy
HEAD d47fae6d9754104c9a9e0b1052fa6aa170e6f22d
```

Relevant product files observed:

```text
README.md
specs/protocol_v0.md
scripts/start_ibridge_virtual_capture.sh
scripts/mac_transmission_profile_matrix.sh
docs/TROUBLESHOOTING.md
```

## Mapping

iBridge Studio crosses a software/device boundary at a different layer:

```text
BetterDisplay virtual display
  -> ScreenCaptureKit capture
  -> bounded capture/encode/send pipeline
  -> TCP stream and control messages
  -> iMac receiver decode/display
  -> input relay back to the sender
```

The v0.5 firmware lab connects to this through:

- periodic timing and jitter;
- bounded queues/ring-buffer overflow decisions;
- protocol framing and partial/corrupted messages;
- state-machine recovery from missing device/receiver/encoder conditions;
- HAL-like seams around platform-specific APIs.

## Product action taken

A product-side note was added in `iBridge-Studio/docs/DEVICE_BOUNDARY_NOTES.md`. It deliberately does
not change runtime behavior because the safe next step is measurement: capture timestamp, queue depth,
encode start/end, send start/end and presentation timestamp.

## What this does not claim

- iBridge Studio is not MCU firmware.
- A virtual display is not GPIO.
- No embedded hardware measurements come from iBridge.
- The connection is architectural: bounded timing/resource/protocol decisions at a device-facing
  boundary.
