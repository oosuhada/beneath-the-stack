# FreeRTOS source reading: task scheduling and queue boundary

## Question

What does an RTOS manage that my cooperative scheduler does not?

## My initial model

Before reading the source, my model was too close to the toy scheduler: a list of tasks, a tick, and
some policy that chooses the next runnable task. That is directionally right, but it misses the parts
that embedded code cares about most: interrupt context, queue wakeups, critical sections, task stacks
and blocked/delayed lists.

## Relevant source

Local reference checked out with `gh repo clone FreeRTOS/FreeRTOS-Kernel`:

```text
../_systems-reference/FreeRTOS-Kernel
commit 8be86d4a24fd4091f8f4192018423ab590f408db
```

Narrow files/functions read:

```text
tasks.c
- vTaskStartScheduler
- xTaskIncrementTick
- vTaskSwitchContext

queue.c
- xQueueReceive
- xQueueReceiveFromISR
```

## Actual control flow I focused on

The high-level path I traced is:

```text
hardware timer tick / explicit yield
  -> tick accounting / delayed task handling
  -> choose runnable task by priority/list state
  -> context switch to selected task

ISR or task writes a queue
  -> queue storage changes
  -> waiting receiver may become ready
  -> scheduler may need to run a different task
```

The important difference from my toy scheduler is that a FreeRTOS queue is not just a container. It is
also a synchronization object that can move tasks between blocked and ready states. The ISR variants
matter because interrupt context cannot behave like a normal task context.

## My toy implementation

`include/bts/firmware.hpp` implements `simulate_cooperative_scheduler()` with deterministic task
periods and worst-case execution times. It records:

- runs;
- max jitter;
- total jitter;
- deadline misses;
- task overrun count.

The firmware lab intentionally includes a long `flash-write` task that exceeds its period. That makes
deadline damage visible in shorter sensor/serial tasks.

## Important differences

- My scheduler does not preempt a running task.
- It has no real interrupt entry/exit path.
- It does not save registers or switch stacks.
- It has no priority inheritance, tickless idle, SMP behavior or blocked lists.
- It measures scheduling logic in a deterministic host process, not on an MCU.

## What I still do not understand deeply enough

- The exact port-layer context save/restore mechanics for a real MCU.
- Stack high-watermark measurement on an actual board.
- Interrupt priority masking rules across different MCUs.
