# Write Summary Workflow

Goal: record completed work so future AI sessions can continue without relying on chat history.

## Summary File

For each completed plan:

- `01-02-PLAN.md` gets `01-02-SUMMARY.md`

## Summary Format

# Summary {phase}-{plan}: {title}

## Completed

- What was implemented.

## Files Changed

- `path/to/file` — what changed.

## Verification

- Commands run.
- Manual checks completed.
- Anything not verified.

## Manual Test Guide

Include this section when human verification is required or useful, especially for UI, mobile/device flows, auth, external services, uploads, realtime behavior, permissions, persistence, or behavior not fully covered by automated tests.

Omit this section only when automated checks fully cover the change or when the change is documentation-only/config-only with no user-facing behavior.

Use this format:

### Preconditions

- Required accounts, seeded data, environment variables, app state, device setup, or service access.

### Steps

1. Action to perform.
   Expected: visible result, state change, network behavior, or persisted data.

2. Action to perform.
   Expected: visible result, state change, network behavior, or persisted data.

### Edge Cases

- Invalid input, empty states, permissions, offline behavior, wrong credentials, or recovery flows relevant to the change.

### Not Covered

- Anything the executor could not verify directly.

## Decisions

- Durable decisions made during implementation.

## Follow-up

- Known issues.
- Deferred work.
- Suggested next plan.

Be specific. Avoid vague statements like "updated the code".
