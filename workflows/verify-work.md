# Verify Work Workflow

Goal: verify completed work against the plan before moving on or committing.

Use this after execution and before final checkpoint or phase advancement.

## Read

Read:

1. target plan file, such as `PLAN.md`, `PLAN-01.md`, or legacy `*-PLAN.md`
2. matching summary file, if present
3. `.planning/STATE.md`
4. changed files
5. relevant tests or verification instructions

## Matching Files

Preferred named phase folder examples:

- `PLAN.md` matches `SUMMARY.md`
- `PLAN-01.md` matches `SUMMARY-01.md`

Legacy example:

- `01-01-PLAN.md` matches `01-01-SUMMARY.md`

## Verify

Check:

1. every acceptance criterion in the plan
2. every required file or behavior from the tasks
3. security or data-safety requirements
4. user-facing behavior
5. persistence or state changes, if relevant
6. error handling and edge cases
7. tests, lint, build, or manual checks listed in the plan
8. whether the matching summary includes a useful `Manual Test Guide` when human verification is required

## Evidence

Collect evidence such as:

- command outputs summarized briefly
- manual verification steps completed by the AI, if any
- manual verification steps for the user to run, when human/device/browser testing remains
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
- Do not claim manual testing was completed unless it was actually performed in the available environment.
- If the user says they completed the manual test guide, treat that as user-provided evidence and record it separately from AI-performed verification.
- If the user intentionally skips this workflow after completing manual tests themselves, that is acceptable; do not imply verification is mandatory for every small change.
- Do not commit during verification. Use `git-checkpoint.md` after verification passes.
