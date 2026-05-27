# Add Tests Workflow

Goal: add missing automated tests for existing or just-completed work.

Use this after implementation, after `test-plan.md`, or when `verify-work.md` finds automated test gaps.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. target plan file, if present
5. matching test plan file, if present
6. matching summary file, if present
7. changed source files
8. existing tests and test setup
9. package/config files that define test commands

## Matching Files

Preferred named phase folder examples:

- `PLAN.md` may have `TEST-PLAN.md` and `SUMMARY.md`
- `PLAN-01.md` may have `TEST-PLAN-01.md` and `SUMMARY-01.md`

Legacy example:

- `01-02-PLAN.md` may have `01-02-TEST-PLAN.md` and `01-02-SUMMARY.md`

## Before Editing

First produce a concise test implementation proposal unless the user already gave explicit approval to add tests.

Include:

- test files to create or update
- behavior each test will cover
- commands to run
- whether test infrastructure is missing
- any product-code changes needed only for testability

If no test infrastructure exists, do not immediately add a full framework. Recommend the smallest useful setup and wait for approval unless the user explicitly asked to create it.

## Add Tests

When approved or explicitly requested:

1. follow existing test framework and naming conventions
2. add focused tests for the changed behavior
3. prefer testing public behavior over implementation details
4. avoid broad snapshots unless they are already the project convention
5. avoid unrelated refactors
6. do not weaken or delete existing tests unless clearly obsolete and explained

## Verify

Run the smallest relevant commands first, then broader checks if appropriate.

Capture:

- commands run
- pass/fail result
- failing test details
- gaps not covered

## Output

Return:

- tests added
- commands run and results
- coverage added
- remaining gaps
- recommended next action, usually `verify-work.md` or `uat.md`

## Rules

- Do not push.
- Do not commit unless the user explicitly asks or separately runs the git checkpoint workflow.
- If tests reveal product bugs, explain the bug and ask whether to fix or create a plan.
