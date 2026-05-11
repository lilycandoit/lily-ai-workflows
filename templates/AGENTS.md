# Project Instructions

This project uses Lily AI Workflows with Codex.

Reusable workflows are installed at:

- `~/.codex/lily-workflows/`

Codex skill shortcuts are installed at:

- `~/.codex/skills/codex-*`

Project-specific source of truth lives in:

- `.planning/`

## Before Work

Before planning or implementation, read:

1. `~/.codex/lily-workflows/planning-system.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. the relevant phase folder under `.planning/phases/`
5. the target `*-PLAN.md`, if executing work

Do not rely on chat history when project files contain the answer.

## Common Shortcuts

- `codex-progress` — check current project state
- `codex-next` — move to the next phase when ready
- `codex-plan` — create a focused plan
- `codex-plan-check` — optional plan review saved as `*-PLAN-CHECK.md`
- `codex-execute` — execute one plan
- `codex-verify` — verify completed work
- `codex-commit` — create a local git checkpoint
- `codex-recap` — summarize project state from files

## Rules

- Keep project memory in `.planning/`.
- Execute one plan at a time.
- Treat `*-PLAN-CHECK.md` as optional context; if present, read it before execution.
- Write a matching `*-SUMMARY.md` after completing a plan.
- Update `.planning/STATE.md` after meaningful progress.
- Do not push unless explicitly asked.
