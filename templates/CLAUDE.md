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
5. the target plan file, if executing work

Do not rely on chat history when project files contain the answer.

## Common Shortcuts

- `cc-progress` — check current project state
- `cc-next` — move to the next phase when ready
- `cc-plan` — create a focused plan
- `cc-plan-check` — optional plan review saved beside the plan
- `cc-execute` — execute one plan
- `cc-verify` — verify completed work
- `cc-commit` — create a local git checkpoint
- `cc-recap` — summarize project state from files
- `cc-consult` — strategic consultation before planning or implementation
- `cc-test-plan` — decide unit, integration, E2E, and manual testing strategy
- `cc-add-tests` — add missing automated tests
- `cc-uat` — create or record User Acceptance Testing checks

## Rules

- Keep project memory in `.planning/`.
- Execute one plan at a time.
- Treat the matching plan-check file as optional context; if present, read it before execution.
- Write the matching summary file after completing a plan.
- Update `.planning/STATE.md` after meaningful progress using the installed planning-system State File Convention. Keep current phase folder, phase title, current plan, status, resume file, blockers, and next action explicit.
- Do not push unless explicitly asked.
