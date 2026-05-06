# Adopt Existing Project Workflow

Goal: bring an existing project into the Lily planning system without rewriting code.

Use this workflow when a project already has code, docs, or history, but does not yet have reliable `.planning/` files.

## Read

Inspect:

1. repository file tree
2. `README.md`
3. package/config files
4. source directories
5. existing docs
6. tests, if present
7. git status

## Create

Create or update:

- `CLAUDE.md`
- `.planning/README.md`
- `.planning/PROJECT.md`
- `.planning/ROADMAP.md`
- `.planning/STATE.md`
- `.planning/DECISIONS.md`
- `.planning/REQUIREMENTS.md`
- `.planning/EXISTING-CODEBASE.md`
- `.planning/OPEN-QUESTIONS.md`
- `.planning/phases/`

## Rules

1. Do not edit product code during adoption.
2. Do not invent features that are not visible in code or docs.
3. Separate observed facts from assumptions.
4. Mark uncertain items as open questions.
5. Identify the safest next plan.
6. Preserve existing project conventions.
7. If the repo already has planning files, update them instead of replacing them.

## Output

Summarize:

- what the app appears to do
- current stack
- important files
- existing features
- risks or missing docs
- recommended next phase
- recommended first plan

## Recommended First Prompt

Use this prompt from inside an existing project:

```text
Read `~/.claude/lily-workflows/adopt-existing-project.md`.

Adopt this existing project into my Lily planning system. Inspect the repo, create or update `CLAUDE.md` and `.planning/` files, summarize what already exists, identify current architecture, known risks, and suggest the next practical plan. Do not rewrite product code during adoption.

