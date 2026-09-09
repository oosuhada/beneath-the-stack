# Evidence index

This file links claims to commands, source files and versioned artifacts. Claims without a command or
artifact should not be treated as finished evidence.

| Claim | Command | Evidence / source |
| --- | --- | --- |
| Custom data structures preserve core invariants | `make test` | `tests/mastery_tests.cpp`, `tests/differential_tests.cpp` |
| Race-condition fixture demonstrates lost updates and fixes | `build/bin/race_lab` | `include/bts/counter.hpp`, `labs/concurrency_race/main.cpp` |
| Storage engine persists fixed rows into pages and rebuilds an index | `build/bin/storage_lab` | `include/bts/toy_storage.hpp`, `evidence/v0.5-macbook-air.json` |
| OS boundary experiments observe fd identity, COW-style behavior and fsync cost | `build/bin/os_boundary_lab` | `labs/os_boundary/main.cpp`, `docs/source-reading/xv6-*.md` |
| Firmware simulator models protocol, ring buffer, scheduler and MMIO concepts | `build/bin/firmware_boundary_lab` | `include/bts/firmware.hpp`, `evidence/hardware/v0.5-macbook-air-probe.txt` |
| Physical MCU measurements are not claimed | `ls /dev/cu.* /dev/tty.*` probe | `evidence/hardware/v0.5-macbook-air-probe.txt` |
| Capstone preserves idempotency and bounded admission | `build/bin/durable_job_runtime_lab` | `include/bts/durable_job_runtime.hpp`, `docs/capstone/durable-job-runtime.md` |
| Capstone recovers a running job after restart | `build/bin/durable_job_runtime_lab` | `failure_campaign.running_recovered == true` in v0.6 evidence |
| Capstone ignores corrupt/truncated journal tail | `build/bin/durable_job_runtime_lab` | `failure_campaign.corrupt_tail_ignored`, `truncated_tail_ignored` |
| Capstone loopback TCP path handles partial frames | `build/bin/durable_job_runtime_lab --clients 10` | `performance_campaign[].partial_reads` |
| Capstone deterministic failure campaign is runnable as one script | `python3 tools/run_capstone_campaign.py --output evidence/v0.6-capstone-campaign.json` | normal, partial-packet, network-drop, duplicate, worker-crash, storage-corruption, queue-full and slow-consumer-pressure scenarios |
| Product repositories were re-audited for applied patterns | per-repo git commits | Product ADR files linked from `docs/applied-concepts.md` |

## v0.6 release snapshot

| Field | Value |
| --- | --- |
| Source commit measured | `26a638c13996afdbaeb2d2c06b01ca0bdbe2ad64` |
| Evidence files | `evidence/v0.6-macbook-air.json`, `evidence/v0.6-macbook-air.csv`, `evidence/v0.6-capstone-campaign.json` |
| Labs | 19 |
| Normalized benchmark records | 56 |
| Capstone failure campaign | duplicate, queue-full, running-recovery, retry, corrupt-tail and truncated-tail cases all passed |
| Capstone network campaign | 1/10/100 loopback clients with partial frame reads recorded |

## Reproduction command set

```bash
make clean
make -j2 all
make test
make lint
python3 tools/run_labs.py --profile quick \
  --output /tmp/beneath-the-stack-quick.json \
  --csv-output /tmp/beneath-the-stack-quick.csv
```

Release evidence files are immutable snapshots. New measurements should be written as new versioned
files rather than overwriting older evidence.
