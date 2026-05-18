# Next Phase Workflow

Goal: move from a completed phase to the next phase based on `.planning/ROADMAP.md`.

Use this when the current phase is complete and the user wants to continue to the next phase.

## Read

Read:

1. project instruction file: `CLAUDE.md`, `AGENTS.md`, or equivalent
2. installed `planning-system.md` workflow, if available
3. `.planning/STATE.md`
4. `.planning/ROADMAP.md`
5. `.planning/DECISIONS.md`
6. all `*-PLAN.md` and `*-SUMMARY.md` files in the current phase
7. latest phase summary notes

## Determine Completion

A phase is complete when:

1. every planned `*-PLAN.md` in that phase has a matching `*-SUMMARY.md`
2. acceptance criteria are satisfied or documented as deferred
3. `.planning/STATE.md` does not list unresolved blockers for that phase

If the phase is not complete, stop and report what remains.

## Move Forward

If the phase is complete:

1. find the next unchecked phase in `.planning/ROADMAP.md`
2. create the next phase folder if missing
3. create a basic `{phase}-CONTEXT.md` if missing, using roadmap goals, requirements, decisions, and prior summaries
4. update `.planning/STATE.md` with current phase, status, resume file, and next action
5. optionally update `.planning/ROADMAP.md` phase status if the existing format supports it

## Output

Return:

- completed phase
- next phase
- files created or updated
- recommended next prompt

## Rules

- Do not implement the next phase during this workflow.
- Do not invent requirements not present in roadmap or requirements files.
- Mark assumptions clearly in the new context file.
