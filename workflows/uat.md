# UAT Workflow

UAT means User Acceptance Testing.

Goal: create or run a human-facing acceptance checklist that confirms a feature works from the user's perspective.

Use this for UI, browser, mobile, auth, permissions, external services, uploads, realtime behavior, visual behavior, or any flow the AI cannot fully verify with automated commands.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. target plan file, if present
5. matching test plan file, if present
6. matching summary file, if present
7. relevant requirements and phase context

## Matching Files

Preferred named phase folder examples:

- `PLAN.md` gets `UAT.md`
- `PLAN-01.md` gets `UAT-01.md`

Legacy example:

- `01-02-PLAN.md` gets `01-02-UAT.md`

## Create UAT Checklist

Write practical human test steps with expected results.

Include:

- prerequisites: accounts, env vars, seed data, browser/device, service access
- happy path checks
- edge cases
- permission/error checks
- persistence or refresh checks
- cleanup steps, if needed
- what evidence the user should report back

## Recording Results

Default behavior: answer in chat only.

If the user asks to save or record UAT, write the matching UAT file beside the plan.

Use this format:

```md
# UAT: {title}

## Scope

- Feature:
- Plan:
- Tester:
- Date:

## Prerequisites

- ...

## Test Steps

1. Step.
   Expected:
   Result: pending | pass | fail | blocked
   Notes:

## Issues Found

- None, or list issue, severity, reproduction, expected, actual.

## Final Status

PASS | PASS WITH GAPS | FAIL | BLOCKED
```

If the user provides results in chat, update the UAT file only when explicitly asked.

## Output

Return:

- UAT checklist or updated UAT result
- what the user needs to test manually
- what evidence or result to report back
- recommended next action: fix issue, verify, commit, or ship

## Rules

- Do not claim UAT passed unless the user or available environment actually performed the steps.
- Do not automate browser/device testing unless the user explicitly asks and the project has tooling available.
- Do not create files unless saving or recording is explicitly requested.
