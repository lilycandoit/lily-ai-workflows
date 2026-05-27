# Planning System

Use `.planning/` as the project source of truth.

## Principles

1. Keep project memory in files, not chat history.
2. Prefer small executable plans over large vague plans.
3. Complete one plan before starting the next.
4. Record decisions when they affect future work.
5. Record summaries after implementation.
6. Do not invent missing context. If context is missing, state what is missing.

## Standard Files

- `.planning/ROADMAP.md` — phases, milestones, and feature order
- `.planning/STATE.md` — explicit phase folder, phase title, current plan, status, resume file, blockers, and next action
- `.planning/DECISIONS.md` — durable decisions and tradeoffs
- `.planning/REQUIREMENTS.md` — stable product and technical requirements
- `.planning/phases/{phase-folder}/` — context, plans, checks, and summaries for a phase

## State File Convention

`.planning/STATE.md` must be explicit enough for a fresh AI session to resume without guessing.

Use this structure:

```md
# State

## Current Position

- Current phase folder: `.planning/phases/phase2-authentication-user-roles/`
- Current phase title: Authentication & User Roles
- Current plan: `PLAN-01.md`
- Current plan title: Add login session persistence
- Status: planned | in-progress | blocked | verifying | complete
- Next action: Execute `PLAN-01.md` following `execute-plan.md`.

## Resume

- Resume file: `.planning/phases/phase2-authentication-user-roles/PLAN-01.md`
- Last completed summary: `.planning/phases/phase1-foundation/SUMMARY.md`
- Last updated: YYYY-MM-DD

## Blockers

- None, or list concrete blockers.

## Notes

- Short operational notes only. Keep durable decisions in `DECISIONS.md`.
```

Rules:

1. Always store both the phase folder path and the human-readable phase title.
2. Always store the current plan filename, or `None` if no plan exists yet.
3. `Resume file` should point to the file the next AI session should read first after `STATE.md`.
4. Update `STATE.md` whenever creating a phase, creating a plan, completing a plan, verifying work, or moving to the next phase.
5. Do not use vague next actions like "continue work". Name the exact workflow and file.

## Phase Folder Convention

Create one folder per roadmap phase under `.planning/phases/`.

Preferred folder format:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Examples:

```text
.planning/phases/phase1-foundation/
.planning/phases/phase2-authentication-user-roles/
.planning/phases/phase3-billing-and-subscriptions/
```

Rules:

1. Derive the phase number and title from `.planning/ROADMAP.md`.
2. Convert the title to a filesystem-safe slug: lowercase words, hyphens between words, no spaces, no `&`, no punctuation.
3. Keep the folder name stable once created, even if the display title changes later.
4. Store the human-readable phase title in `ROADMAP.md`, `CONTEXT.md`, plan headings, and summary headings.
5. If an older project already uses folders like `01-foundation` or `phase-1`, continue that project convention unless the user asks to migrate.

## Phase File Convention

Inside each phase folder, prefer simple names because the folder already identifies the phase:

```text
CONTEXT.md
PLAN.md
PLAN-CHECK.md
SUMMARY.md
```

For phases with multiple plans, use numbered plan files:

```text
PLAN-01.md
PLAN-01-CHECK.md
SUMMARY-01.md
PLAN-02.md
PLAN-02-CHECK.md
SUMMARY-02.md
```

Keep plan, plan-check, and summary names aligned:

- `PLAN.md` gets `PLAN-CHECK.md` and `SUMMARY.md`.
- `PLAN-01.md` gets `PLAN-01-CHECK.md` and `SUMMARY-01.md`.

Legacy names such as `01-01-PLAN.md`, `01-01-PLAN-CHECK.md`, and `01-01-SUMMARY.md` are still valid in existing projects.

## Plan Completion Rule

A plan is incomplete if it has no matching summary.

Examples:

- `PLAN.md` without `SUMMARY.md` means not complete.
- `PLAN.md` with `SUMMARY.md` means complete.
- `PLAN-01.md` without `SUMMARY-01.md` means not complete.
- `PLAN-01.md` with `SUMMARY-01.md` means complete.
- `01-01-PLAN.md` without `01-01-SUMMARY.md` means not complete.
- `01-01-PLAN.md` with `01-01-SUMMARY.md` means complete.

## Before Work

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, `GEMINI.md`, or equivalent
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. relevant phase `CONTEXT.md`
5. the next unexecuted plan

## After Work

Update or create:

1. matching summary file
2. `.planning/STATE.md`
3. `.planning/DECISIONS.md` if new durable decisions were made
