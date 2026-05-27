# Progress Check Workflow

Goal: understand current project state and identify the next useful action.

## Read

Read these if they exist:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. `.planning/ROADMAP.md`
5. `.planning/DECISIONS.md`
6. current phase folder under `.planning/phases/`

## Analyze

1. Identify the current phase folder, human-readable phase title, current plan, status, resume file, blockers, and next action from `.planning/STATE.md`.
2. List all plan files in the current phase.
3. List all matching summary files.
4. Find the first plan without a matching summary.
5. Check for blockers, TODOs, or missing context.

Recognize both preferred and legacy naming:

- preferred: `PLAN.md`, `PLAN-01.md`, `PLAN-02.md`
- preferred summaries: `SUMMARY.md`, `SUMMARY-01.md`, `SUMMARY-02.md`
- legacy: `*-PLAN.md`, `*-SUMMARY.md`

## Output

Return:

- Current phase folder and phase title
- Current plan, status, resume file, and next action
- Completed plans
- Next unexecuted plan
- Important decisions
- Blockers or missing files
- Recommended next action

Do not execute work during a progress check unless the user explicitly asks.
