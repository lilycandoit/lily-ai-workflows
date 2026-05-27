# Execute Plan Workflow

Goal: execute one existing plan safely.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. the target plan file, such as `PLAN.md`, `PLAN-01.md`, or legacy `*-PLAN.md`
5. matching plan-check file, if present. Plan checks are optional, so absence of this file is not a blocker.
6. files listed in the plan's `read_first` section
7. relevant existing source files

## Matching Files

Use the project's existing naming convention.

Preferred named phase folder examples:

- `PLAN.md` reads optional `PLAN-CHECK.md` and writes `SUMMARY.md`
- `PLAN-01.md` reads optional `PLAN-01-CHECK.md` and writes `SUMMARY-01.md`

Legacy examples:

- `01-01-PLAN.md` reads optional `01-01-PLAN-CHECK.md` and writes `01-01-SUMMARY.md`

## Execution Rules

1. Execute only the selected plan.
2. Prefer existing project patterns.
3. Keep changes scoped.
4. Do not rewrite unrelated code.
5. Do not delete user work.
6. Verify with tests, lint, or manual checks when available.
7. If no matching plan-check file exists, continue execution and mention in the final response that no persisted plan check was found.
8. If a matching plan-check file has verdict `FAIL`, stop and ask for plan revision before executing.
9. If the plan is wrong or stale, stop and explain the mismatch.
10. Apply any `PASS WITH NOTES` executor guidance from the matching plan-check file.

## After Execution

Create a matching summary file by following the installed `write-summary.md` workflow.

If the work includes UI, mobile/device flows, auth, external services, uploads, realtime behavior, permissions, persistence, or any behavior that cannot be fully verified by automated checks, include a `Manual Test Guide` in the summary.

Update `.planning/STATE.md` using the installed `planning-system.md` State File Convention. Set status to `verifying` or `complete` as appropriate, update resume file, last completed summary, last updated, blockers, and next action.

Update `.planning/DECISIONS.md` only if a durable decision was made.

## Git Checkpoint

If the project is a git repository and the completed work is ready to preserve, follow the installed `git-checkpoint.md` workflow.

Do not push unless the user explicitly asks.
