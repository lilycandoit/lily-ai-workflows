# Shared AI Workflows

Reusable AI workflows for software projects.

These workflows are user-level instructions. They are shared across projects, but each project's `.planning/` folder remains the source of truth.

## Core Idea

- User-level workflows define how AI should work.
- Project-level `.planning/` files define what is true for that project.
- AI-specific adapters and skills are shortcuts only; the workflow files are the durable instructions.

## Standard Project Files

Each project should contain:

- project instruction file such as `CLAUDE.md`, `AGENTS.md`, or `GEMINI.md`
- `.planning/README.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

Preferred phase folders use this format:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Example:

```text
.planning/phases/phase2-authentication-user-roles/
```

Inside each named phase folder, prefer simple files such as `CONTEXT.md`, `PLAN.md`, `PLAN-CHECK.md`, and `SUMMARY.md`. For multiple plans, use `PLAN-01.md`, `PLAN-01-CHECK.md`, and `SUMMARY-01.md`.

## Core Daily Workflows

- `planning-system.md` — overall rules and file conventions
- `progress-check.md` — inspect current state and identify next action
- `recap.md` — summarize project state from files only
- `next-phase.md` — move from completed phase to next phase
- `create-plan.md` — create one focused implementation plan
- `create-plan-deep.md` — deeper planning for risky or unclear work
- `plan-check.md` — review a plan before execution
- `execute-plan.md` — execute one plan safely
- `verify-work.md` — check completed work against acceptance criteria
- `write-summary.md` — record completed work
- `git-checkpoint.md` — create local commits after verified work

## Project Lifecycle Workflows

- `bootstrap-project.md` — start a brand new project
- `adopt-existing-project.md` — bring an existing project into the planning system

## Utility Workflows

- `quick.md` — handle tiny changes without full phase planning
- `backlog.md` — capture ideas, seeds, bugs, and future work
- `debug.md` — structured bug investigation
- `review.md` — code review mode
- `ship.md` — push, PR, or release workflow
