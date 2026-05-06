# Verify Work Workflow

Goal: verify completed work against the plan before moving on or committing.

Use this after execution and before final checkpoint or phase advancement.

## Read

Read:

1. target `*-PLAN.md`
2. matching `*-SUMMARY.md`, if present
3. `.planning/STATE.md`
4. changed files
5. relevant tests or verification instructions

## Verify

Check:

1. every acceptance criterion in the plan
2. every required file or behavior from the tasks
3. security or data-safety requirements
4. user-facing behavior
5. persistence or state changes, if relevant
6. error handling and edge cases
7. tests, lint, build, or manual checks listed in the plan

## Evidence

Collect evidence such as:

- command outputs summarized briefly
- manual verification steps completed
- code references for static checks
- known gaps or skipped checks

## Output

Return one of:

- `PASS` — work satisfies the plan
- `PASS WITH GAPS` — acceptable but with documented manual or deferred gaps
- `FAIL` — work does not satisfy the plan

Include:

- what was checked
- what passed
- what failed or was not checked
- recommended next action

## Rules

- Do not silently ignore missing verification.
- If a browser, device, API key, or external service is required and unavailable, mark it as a verification gap.
- Do not commit during verification. Use `git-checkpoint.md` after verification passes.
