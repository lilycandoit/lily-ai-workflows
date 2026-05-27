# Planning

This folder is the project memory. It stores durable context so AI sessions can continue without relying on chat history.

## Standard Files

- `PROJECT.md` — product summary, audience, value, constraints
- `ROADMAP.md` — phases, milestones, success criteria, dependencies
- `STATE.md` — explicit phase folder, phase title, current plan, status, resume file, blockers, and next action
- `DECISIONS.md` — durable product and technical decisions
- `REQUIREMENTS.md` — stable requirements and acceptance criteria
- `BACKLOG.md` — optional ideas, bugs, seeds, and future work
- `phases/` — phase context, plans, plan checks, summaries, and verification notes

## State File Format

`STATE.md` should always make the current position explicit:

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

- None.

## Notes

- Short operational notes only.
```

The goal is that any AI tool can read `STATE.md`, find the right phase folder, and continue without guessing.

## Phase Folder Convention

Preferred phase folder format:

```text
phases/phase{number}-{phase-slug}/
```

Examples:

```text
phases/phase1-foundation/
phases/phase2-authentication-user-roles/
phases/phase3-billing-and-subscriptions/
```

Create the slug from the roadmap phase title: lowercase, hyphen-separated, no spaces, no `&`, no punctuation.

Keep the folder name stable once created. Store the human-readable phase title in `ROADMAP.md`, `CONTEXT.md`, plan headings, and summary headings.

## Phase Files

Common phase files:

- `CONTEXT.md` — research and context for a phase
- `PLAN.md` — one executable plan when the phase has a single plan
- `PLAN-CHECK.md` — optional persisted review for `PLAN.md`
- `SUMMARY.md` — completed work summary for `PLAN.md`

For multiple plans in one phase, use:

- `PLAN-01.md`
- `PLAN-01-CHECK.md`
- `SUMMARY-01.md`
- `PLAN-02.md`
- `PLAN-02-CHECK.md`
- `SUMMARY-02.md`

Legacy names such as `01-01-PLAN.md`, `01-01-PLAN-CHECK.md`, and `01-01-SUMMARY.md` are also valid in older projects.

## Completion Rule

A plan is complete only when it has a matching summary.

Examples:

- `PLAN.md` without `SUMMARY.md` means not complete.
- `PLAN.md` with `SUMMARY.md` means complete.
- `PLAN-01.md` without `SUMMARY-01.md` means not complete.
- `PLAN-01.md` with `SUMMARY-01.md` means complete.
- `01-01-PLAN.md` without `01-01-SUMMARY.md` means plan `01-01` is not complete.
- `01-01-PLAN.md` with `01-01-SUMMARY.md` means plan `01-01` is complete.

## Operating Rule

Before work, read the project instruction file, `STATE.md`, `ROADMAP.md`, and the relevant phase files. After work, update the matching summary and `STATE.md`.
