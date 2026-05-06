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
- `.planning/STATE.md` — current phase, current plan, status, and next action
- `.planning/DECISIONS.md` — durable decisions and tradeoffs
- `.planning/REQUIREMENTS.md` — stable product and technical requirements
- `.planning/phases/{phase}/` — context, plans, and summaries for a phase

## Plan Completion Rule

A plan is incomplete if it has no matching summary.

Example:

- `01-01-PLAN.md` without `01-01-SUMMARY.md` means not complete.
- `01-01-PLAN.md` with `01-01-SUMMARY.md` means complete.

## Before Work

Read:

1. `CLAUDE.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. relevant phase context
5. the next unexecuted plan

## After Work

Update or create:

1. matching `*-SUMMARY.md`
2. `.planning/STATE.md`
3. `.planning/DECISIONS.md` if new durable decisions were made
