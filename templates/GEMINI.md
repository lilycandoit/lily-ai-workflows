# Project Instructions

This project uses Lily AI Workflows.

Gemini support is currently a starter adapter. Use the shared workflow files as plain Markdown instructions until a richer Gemini-specific adapter exists.

Project-specific source of truth lives in:

- `.planning/`

## Before Work

Before planning or implementation, read:

1. project instructions
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. the relevant phase folder under `.planning/phases/`
5. the target plan file, if executing work

## Rules

- Keep project memory in `.planning/`.
- Execute one plan at a time.
- Treat the matching plan-check file as optional context; if present, read it before execution.
- Write the matching summary file after completing a plan.
- Update `.planning/STATE.md` after meaningful progress using the installed planning-system State File Convention. Keep current phase folder, phase title, current plan, status, resume file, blockers, and next action explicit.
