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
6. all plan and summary files in the current phase folder
7. latest phase summary notes

## Determine Completion

A phase is complete when:

1. every planned plan file in that phase has a matching summary file
2. acceptance criteria are satisfied or documented as deferred
3. `.planning/STATE.md` does not list unresolved blockers for that phase

Matching examples:

- `PLAN.md` -> `SUMMARY.md`
- `PLAN-01.md` -> `SUMMARY-01.md`
- `01-01-PLAN.md` -> `01-01-SUMMARY.md`

If the phase is not complete, stop and report what remains.

## Move Forward

If the phase is complete:

1. find the next unchecked phase in `.planning/ROADMAP.md`
2. create the next phase folder if missing using the installed `planning-system.md` phase folder convention
3. create a basic `CONTEXT.md` in that phase folder if missing, using roadmap goals, requirements, decisions, and prior summaries
4. update `.planning/STATE.md` using the installed `planning-system.md` State File Convention: current phase folder, phase title, current plan, current plan title, status, resume file, last completed summary, last updated, blockers, and next action
5. optionally update `.planning/ROADMAP.md` phase status if the existing format supports it

Preferred phase folder format:

```text
.planning/phases/phase{number}-{phase-slug}/
```

Example:

```text
.planning/phases/phase2-authentication-user-roles/CONTEXT.md
```

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
- Preserve an existing project's phase folder convention unless the user asks to migrate it.
