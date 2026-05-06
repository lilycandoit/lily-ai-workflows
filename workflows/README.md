# Lily Workflows

Reusable AI workflows for software projects.

These workflows are user-level instructions. They are shared across projects, but each project's `.planning/` folder remains the source of truth.

## Core Idea

- User-level workflows define how AI should work.
- Project-level `.planning/` files define what is true for that project.
- `CLAUDE.md` connects a project to this workflow system.

## Standard Project Files

Each project should contain:

- `CLAUDE.md`
- `.planning/README.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/phases/`

## Main Workflows

- `planning-system.md` — overall rules
- `progress-check.md` — inspect current state and find next action
- `create-plan.md` — create a focused implementation plan
- `execute-plan.md` — execute one plan safely
- `write-summary.md` — summarize completed work
- `bootstrap-project.md` — create planning files for a new project
- `adopt-existing-project.md` — bring an existing codebase into the planning system
- `git-checkpoint.md` — create small local commits after verified work
