# Debugger, tracing and assembly evidence

## What was attempted

### LLDB

`tools/run_lldb_trace.sh` builds `labs/toy_filesystem/main.cpp` with `-O0 -g` and attempts to break on
`bts::ToyFileSystem::write_file`.

On this MacBook Air session LLDB failed before a useful breakpoint trace with dyld symbol-table
errors and `Illegal instruction: 4`. The raw output is retained in
`evidence/debugger/v0.4-lldb-toy-filesystem.txt`. I do not count that as a successful debugger trace.

### `sample`

`tools/run_sample_trace.sh` runs a longer `os_boundary_lab` workload and samples the process. The
first attempt failed because the target process exited too quickly. Increasing the context-switch
round count produced `evidence/debugger/v0.4-sample-os-boundary.txt`.

The useful observation is that the sampled user-space program shows:

- `read` and `write` frames in `libsystem_kernel.dylib` during process pipe ping-pong;
- condition-variable wait frames through libc++/pthread during thread ping-pong.

This is not kernel source tracing, but it connects the benchmarked behavior to the OS-facing calls
that the program actually makes.

## Assembly

`tools/capture_assembly.sh` emits `-O0` and `-O2` assembly for:

- `sum_contiguous`
- `sum_stride`
- `atomic_increment`
- `mutex_increment`

The v0.4 snapshots live in `evidence/assembly/v0.4/`.

Observed at a cautious level:

- the `-O0` output preserves much more stack/local bookkeeping;
- the `-O2` output is much shorter around simple loops;
- `atomic_increment` exposes hardware-level atomic memory update instructions;
- `mutex_increment` keeps calls into the mutex implementation rather than becoming a simple local
  increment loop.

I am not claiming compiler-backend expertise from this; the artifact is a bridge from C++ source to
machine-level effects.
