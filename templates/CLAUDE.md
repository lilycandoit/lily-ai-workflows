# Project Instructions

This project uses Lily AI Workflows with Claude Code.

Reusable workflows are installed at:

- `~/.claude/custom-workflows/`

Claude Code skill shortcuts are installed at:

- `~/.claude/skills/cc-*`

Project-specific source of truth lives in:

- `.planning/`

## Before Work

Before planning or implementation, read:

1. `~/.claude/custom-workflows/planning-system.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. the relevant phase folder under `.planning/phases/`
5. the target `*-PLAN.md`, if executing work

Do not rely on chat history when project files contain the answer.

## Common Shortcuts

- `cc-progress` — check current project state
- `cc-next` — move to the next phase when ready
- `cc-plan` — create a focused plan
- `cc-plan-check` — optional plan review saved as `*-PLAN-CHECK.md`
- `cc-execute` — execute one plan
- `cc-verify` — verify completed work
- `cc-commit` — create a local git checkpoint
- `cc-recap` — summarize project state from files

## Rules

- Keep project memory in `.planning/`.
- Execute one plan at a time.
- Treat `*-PLAN-CHECK.md` as optional context; if present, read it before execution.
- Write a matching `*-SUMMARY.md` after completing a plan.
- Update `.planning/STATE.md` after meaningful progress.
- Do not push unless explicitly asked.
