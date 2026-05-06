# Debug Workflow

Goal: investigate and fix a bug with a clear diagnosis before changing code.

Use this for broken behavior, failing tests, regressions, runtime errors, or unclear failures.

## Read

Read:

1. project instruction file
2. `.planning/STATE.md`, if present
3. relevant plans or summaries
4. error output, logs, screenshots, or reproduction steps
5. relevant source files and tests

## Process

1. Reproduce or restate the failure.
2. Identify expected behavior.
3. Inspect the smallest relevant code path.
4. Form a root-cause hypothesis.
5. Validate the hypothesis with evidence.
6. Apply the smallest safe fix.
7. Verify the fix.
8. Document any follow-up work.

## Output

Return:

- symptom
- root cause
- fix
- files changed
- verification
- follow-up, if any

## Rules

- Do not make broad refactors while debugging.
- If root cause is not known, say so and keep investigating.
- If the bug reveals a durable decision or pitfall, update `.planning/DECISIONS.md` or backlog only when useful.
