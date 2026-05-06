# Execute Plan Workflow

Goal: execute one existing plan safely.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. `.planning/STATE.md`
3. the target `*-PLAN.md`
4. matching `*-PLAN-CHECK.md`, if present
5. files listed in the plan's `read_first` section
6. relevant existing source files

## Execution Rules

1. Execute only the selected plan.
2. Prefer existing project patterns.
3. Keep changes scoped.
4. Do not rewrite unrelated code.
5. Do not delete user work.
6. Verify with tests, lint, or manual checks when available.
7. If a matching `*-PLAN-CHECK.md` has verdict `FAIL`, stop and ask for plan revision before executing.
8. If the plan is wrong or stale, stop and explain the mismatch.
9. Apply any `PASS WITH NOTES` executor guidance from `*-PLAN-CHECK.md`.

## After Execution

Create a matching `*-SUMMARY.md`.

Update `.planning/STATE.md`.

Update `.planning/DECISIONS.md` only if a durable decision was made.

## Git Checkpoint

If the project is a git repository and the completed work is ready to preserve, follow `~/.claude/lily-workflows/git-checkpoint.md`.

Do not push unless the user explicitly asks.
