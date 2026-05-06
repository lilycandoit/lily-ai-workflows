# Progress Check Workflow

Goal: understand current project state and identify the next useful action.

## Read

Read these if they exist:

1. `CLAUDE.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. `.planning/DECISIONS.md`
5. current phase folder under `.planning/phases/`

## Analyze

1. Identify the current phase.
2. List all `*-PLAN.md` files in the current phase.
3. List all matching `*-SUMMARY.md` files.
4. Find the first plan without a matching summary.
5. Check for blockers, TODOs, or missing context.

## Output

Return:

- Current phase
- Completed plans
- Next unexecuted plan
- Important decisions
- Blockers or missing files
- Recommended next action

Do not execute work during a progress check unless the user explicitly asks.
