# Create Deep Plan Workflow

Goal: create a higher-confidence implementation plan for risky, large, unclear, or cross-system work.

Use this instead of `create-plan.md` when the work has meaningful architecture, security, data, integration, or verification risk.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. `.planning/ROADMAP.md`
5. `.planning/REQUIREMENTS.md`
6. `.planning/DECISIONS.md`
7. relevant phase `CONTEXT.md`
8. recent summaries from related phases
9. relevant source files and tests

## Phase Location

Create plans inside the current phase folder under `.planning/phases/`.

Preferred folder format:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Prefer simple plan file names inside the named folder:

```text
PLAN.md
PLAN-01.md
PLAN-02.md
```

Keep legacy file names if the project already uses another convention.

After creating the plan, update `.planning/STATE.md` using the installed `planning-system.md` State File Convention. Set current phase folder, phase title, current plan, current plan title, status `planned`, resume file, last updated, blockers, and next action.

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

Create one or more focused plan files. Prefer one plan unless the work is clearly too large for one session.

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
