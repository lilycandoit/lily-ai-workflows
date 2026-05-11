# Planning

This folder is the project memory. It stores durable context so AI sessions can continue without relying on chat history.

## Standard Files

- `PROJECT.md` — product summary, audience, value, constraints
- `ROADMAP.md` — phases, milestones, success criteria, dependencies
- `STATE.md` — current phase, current plan, status, next action, blockers
- `DECISIONS.md` — durable product and technical decisions
- `REQUIREMENTS.md` — stable requirements and acceptance criteria
- `BACKLOG.md` — optional ideas, bugs, seeds, and future work
- `phases/` — phase context, plans, plan checks, summaries, and verification notes

## Phase Files

Common phase files:

- `{phase}-CONTEXT.md` — research and context for a phase
- `{phase}-{plan}-PLAN.md` — one executable plan
- `{phase}-{plan}-PLAN-CHECK.md` — optional persisted plan review
- `{phase}-{plan}-SUMMARY.md` — completed work summary

## Completion Rule

A plan is complete only when it has a matching summary.

Example:

- `01-01-PLAN.md` without `01-01-SUMMARY.md` means plan `01-01` is not complete.
- `01-01-PLAN.md` with `01-01-SUMMARY.md` means plan `01-01` is complete.

## Operating Rule

Before work, read the project instruction file, `STATE.md`, `ROADMAP.md`, and the relevant phase files. After work, update the matching summary and `STATE.md`.
