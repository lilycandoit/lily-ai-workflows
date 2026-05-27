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

If a next phase is identified, create its phase folder using the installed `planning-system.md` phase folder convention:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Example:

```text
.planning/phases/phase1-stabilize-existing-app/
```

Add `CONTEXT.md` inside that folder with observed facts, assumptions, risks, and recommended first plan direction. Do not create a plan until the next work unit is clear enough to execute.

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
Read the installed `adopt-existing-project.md` workflow.

Adopt this existing project into my Lily planning system. Inspect the repo, create or update `CLAUDE.md` and `.planning/` files, summarize what already exists, identify current architecture, known risks, and suggest the next practical plan. Do not rewrite product code during adoption.
```
