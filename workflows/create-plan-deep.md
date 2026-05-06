# Create Deep Plan Workflow

Goal: create a higher-confidence implementation plan for risky, large, unclear, or cross-system work.

Use this instead of `create-plan.md` when the work has meaningful architecture, security, data, integration, or verification risk.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. `.planning/REQUIREMENTS.md`
5. `.planning/DECISIONS.md`
6. relevant phase context
7. recent summaries from related phases
8. relevant source files and tests

## Research Passes

Perform these passes before writing the plan. Use sub-agents only if the user explicitly asks or the local agent system already supports them cheaply.

### Stack Pass

Identify framework, runtime, dependencies, commands, conventions, and constraints.

### Feature Pass

Identify user-facing behavior, data flow, edge cases, and acceptance criteria.

### Architecture Pass

Identify affected modules, integration points, ownership boundaries, and likely files to change.

### Risk Pass

Identify security, data loss, regression, migration, compatibility, and UX risks.

### Verification Pass

Map each major requirement or task to automated or manual verification.

If no automated verification exists, document the manual verification path and whether test scaffolding should be added.

## Draft Plan

Create one or more focused `*-PLAN.md` files. Prefer one plan unless the work is clearly too large for one session.

Each plan must include:

- objective
- context
- read-first files
- tasks
- acceptance criteria
- verification
- risks and stop conditions

## Plan Check Loop

Run `plan-check.md` against the draft.

If blocking issues are found, revise the plan. Loop up to 3 times.

## Output

Return:

- plan file path
- why deep planning was needed
- main risks
- verification approach
- next recommended action

## Rules

- Do not implement during deep planning.
- Keep research notes concise and relevant.
- Do not create broad speculative plans.
