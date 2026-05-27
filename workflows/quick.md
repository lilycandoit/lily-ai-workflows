# Quick Workflow

Goal: handle a tiny, low-risk change without creating a full phase plan.

Use for small documentation edits, typo fixes, simple config updates, tiny styling changes, or forgotten local commits.

## Read

Read:

1. project instruction file
2. `.planning/STATE.md`, if present
3. directly relevant files

## Rules

A quick task must be:

- small
- low-risk
- easy to verify
- not architecture-changing
- not cross-phase scope
- not a substitute for a real plan when planning is needed

If the task is larger than expected, stop and recommend `create-plan.md`.

## Execute

1. inspect relevant files
2. make the minimal change
3. verify with the cheapest reliable check
4. update `.planning/STATE.md` only if the current phase, current plan, status, resume file, blockers, or next action changed; use the installed `planning-system.md` State File Convention
5. use `git-checkpoint.md` if the user wants a local commit

## Output

Return:

- change made
- files changed
- verification
- whether anything was intentionally not done
