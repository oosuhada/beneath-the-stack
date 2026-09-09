# ADR-017: Validate toy storage claims against real PostgreSQL

## Status

Accepted in v0.7.

## Context

Earlier versions implemented a B+ tree, fixed-row serialization, a pager, append-only logs and
recovery. Those are useful for learning, but a reviewer can reasonably ask whether the same mental
model holds when PostgreSQL planner, buffers, MVCC, locks and WAL are involved.

## Decision

Keep the toy storage engine as a source-level learning artifact, but add a separate real PostgreSQL
reality script:

```text
tools/run_postgres_reality.py
```

The script must use a disposable database and record machine-readable evidence for:

- `EXPLAIN (ANALYZE, BUFFERS, FORMAT JSON)`;
- broad predicate sequential scan;
- composite-index lookup;
- selective bitmap/index path;
- MVCC visibility before/after commit;
- lock wait timeout;
- deadlock detection;
- WAL LSN movement.

## Consequences

- The repository can explain where the toy model maps to PostgreSQL and where it stops.
- The evidence depends on a local PostgreSQL server and is not part of CI.
- PostgreSQL source reading remains question-focused rather than broad framework archaeology.

