# Create Plan Workflow

Goal: create one focused implementation plan.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. `.planning/ROADMAP.md`
5. `.planning/REQUIREMENTS.md`
6. `.planning/DECISIONS.md`
7. relevant phase `CONTEXT.md`
8. recent summaries from the same phase

## Phase Location

Create the plan inside the current phase folder under `.planning/phases/`.

Preferred folder format:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Example:

```text
.planning/phases/phase2-authentication-user-roles/PLAN.md
```

If the phase folder does not exist, create it from the current roadmap phase title using the `planning-system.md` phase folder convention.

After creating the plan, update `.planning/STATE.md` using the installed `planning-system.md` State File Convention. Set current phase folder, phase title, current plan, current plan title, status `planned`, resume file, last updated, blockers, and next action.

## Plan File Naming

Prefer simple file names inside named phase folders:

- use `PLAN.md` for the first or only plan in a phase
- use `PLAN-01.md`, `PLAN-02.md`, etc. when the phase has multiple plans
- keep legacy file names if the project already uses a different convention

## Plan Rules

A good plan should be:

- small enough to execute in one focused session
- tied to requirements or roadmap goals
- explicit about files to read first
- explicit about files likely to change
- clear about acceptance criteria
- clear about risks or edge cases

## Plan Format

Use this structure:

# Plan {phase}: {title}

<objective>
What this plan achieves.
</objective>

<context>
Important background and decisions.
</context>

<read_first>
Files AI must read before implementation.
</read_first>

<tasks>
Step-by-step implementation tasks.
</tasks>

<acceptance_criteria>
How to know the work is done.
</acceptance_criteria>

<verification>
Commands or manual checks to run. For non-trivial logic, data, auth, storage, API, integration, UI, or permission work, recommend `test-plan.md` before execution.
</verification>

Do not include unrelated future work.
