# ADR-008: Why Memory Atlas sanitizes history path components

## Context

The Memory Atlas message-history implementation built filenames directly from room and user input.
That made names like `../global/escaped` a storage-boundary problem, not just a string-formatting
problem.

## Options

1. Assume room/user identifiers are already safe.
2. Reject unsafe identifiers everywhere.
3. Encode identifiers into safe filename components at the storage boundary.

## Decision

Sanitize path components consistently before building private/room history filenames.

## Trade-offs

- Existing simple identifiers are unchanged.
- Some distinct unusual identifiers can map to the same sanitized name; a stronger future version
  could use percent-encoding or hashing.
- This is a local storage boundary fix, not a complete authentication/authorization model.

## Evidence

- `memory-atlas-server/src/MessageHistory.cpp`
- `memory-atlas-server/tests/test_message_history.cpp`
