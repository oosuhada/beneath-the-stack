# Reproducibility audit

## Clean build path

The expected local path is:

```bash
make clean
make -j2 all
make test
make lint
python3 tools/run_labs.py --profile quick \
  --output /tmp/beneath-the-stack-quick.json \
  --csv-output /tmp/beneath-the-stack-quick.csv
python3 tools/run_capstone_campaign.py \
  --output /tmp/beneath-the-stack-capstone-campaign.json
```

CI also runs a CMake portability check on Ubuntu.

## What is reproducible

- All C++ labs compile with warnings as errors.
- Deterministic correctness tests run through `make test`.
- Quick evidence emits one JSON object with all labs.
- CSV normalization extracts benchmark records from nested lab outputs.
- The capstone failure campaign emits booleans for idempotency, queue-full rejection, running-job
  recovery, corrupt-tail handling and truncated-tail handling.
- The capstone campaign script emits a scenario-indexed JSON summary for normal, partial-packet,
  network-drop, duplicate, worker-crash, storage-corruption, queue-full and slow-consumer-pressure
  checks.

## What is environment-specific

- Numeric timings depend on CPU, OS, compiler and local load.
- Loopback TCP does not model a remote network.
- macOS debugger/sanitizer behavior may differ from Ubuntu CI.
- Physical hardware measurements require a connected board and are not part of the current evidence.

## Evidence hygiene

Do not update old `evidence/v0.*` snapshots in place. For a new release, commit the code first, run
the evidence capture against that source SHA, then commit the generated JSON/CSV as a separate
evidence commit.
