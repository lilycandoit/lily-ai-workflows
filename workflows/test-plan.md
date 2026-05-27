# Test Plan Workflow

Goal: decide how a feature, phase, or plan should be tested before or during implementation.

Default behavior: answer in chat only. Save a `TEST-PLAN.md` file only when the user explicitly asks, or when the current workflow specifically requires a persisted test plan.

Use this for non-trivial work, especially auth, payments, storage, data migrations, permissions, APIs, integrations, UI flows, or anything where verification is not obvious.

## Read

Read the smallest useful context set:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. `.planning/ROADMAP.md`
5. `.planning/REQUIREMENTS.md`
6. `.planning/DECISIONS.md`
7. target plan file, if one exists
8. relevant phase `CONTEXT.md`
9. package/config files that define test commands
10. existing tests, test setup, and changed or likely-to-change source files

## Detect Test Infrastructure

Identify:

- package or build tool
- existing test directories and naming conventions
- available commands such as unit, integration, E2E, lint, typecheck, build, or browser checks
- current gaps, including no test infrastructure

If no test infrastructure exists, say so clearly and recommend one of:

1. minimal smoke/manual testing for this phase
2. add minimal automated test infrastructure now
3. defer automated tests and record the gap

## Test Strategy

Map the work to test levels:

- unit tests for pure logic, parsing, validation, utilities, state transitions
- integration tests for storage, APIs, database, auth/session, side effects
- E2E tests for critical user journeys
- manual/UAT checks for browser, device, external service, visual, or permission flows
- no-test-needed cases for docs-only or low-risk config-only changes

## Persisted Artifact

When saving is requested, write the test plan beside the target plan.

Naming rule:

- `PLAN.md` gets `TEST-PLAN.md`
- `PLAN-01.md` gets `TEST-PLAN-01.md`
- legacy `01-02-PLAN.md` gets `01-02-TEST-PLAN.md`

Use this format:

```md
# Test Plan: {title}

## Scope

- Feature or plan under test:
- Risk level: low | medium | high

## Existing Test Infrastructure

- Commands found:
- Existing test locations:
- Gaps:

## Automated Tests To Add

- Unit:
- Integration:
- E2E:

## Manual / UAT Checks

- Human checks needed:
- Browser/device/service requirements:

## Commands

- `command` — purpose

## Deferred Or Not Covered

- Gap:
- Reason:
- Follow-up:
```

## Output

Return:

- current test infrastructure
- recommended test strategy
- tests to add now
- manual/UAT checks needed
- commands to run
- gaps or deferrals
- whether to run `add-tests.md`, `uat.md`, or `verify-work.md` next

## Rules

- Do not add tests during this workflow.
- Do not install dependencies unless the user explicitly asks.
- Do not create files unless saving is explicitly requested.
- Keep recommendations proportional to project maturity and feature risk.
