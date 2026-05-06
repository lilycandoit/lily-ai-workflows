# Plan Check Workflow

Goal: review a plan before execution, persist the review beside the plan, and catch scope, verification, or context problems early.

Use this after creating a plan and before executing it.

## Read

Read:

1. target `*-PLAN.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. `.planning/REQUIREMENTS.md`
5. `.planning/DECISIONS.md`
6. files listed in the plan's `read_first` section, if needed to judge feasibility
7. existing matching `*-PLAN-CHECK.md`, if present

## Check

Review the plan against these dimensions:

1. Scope: plan is small enough for one focused execution session.
2. Roadmap fit: plan matches the current phase and roadmap goal.
3. Requirements: plan maps to explicit requirements or documented project goals.
4. Context: plan references enough prior context and decisions.
5. Read-first: plan lists the files an executor must inspect before editing.
6. Tasks: tasks are concrete, ordered, and implementable.
7. Acceptance: success criteria are observable.
8. Verification: automated or manual verification is specified.
9. Safety: risks, destructive actions, migrations, and user data concerns are addressed.
10. Boundaries: plan avoids unrelated refactors and future-phase work.

## Persisted Artifact

Always write the plan-check result to a file beside the target plan.

Naming rule:

- `.planning/phases/02-popup/02-01-PLAN.md` gets `.planning/phases/02-popup/02-01-PLAN-CHECK.md`
- `{anything}-PLAN.md` gets `{anything}-PLAN-CHECK.md`

If the file already exists, replace it with the latest check result. Do not append multiple stale reviews.

Use this format:

```md
# Plan Check {plan-id}: {plan title}

**Checked:** {YYYY-MM-DD}
**Plan:** `{path/to/PLAN.md}`
**Verdict:** PASS | PASS WITH NOTES | FAIL

## Findings

### Blocking Issues

- None, or list issues that must be fixed before execution.

### Notes

- Minor risks, assumptions, or execution guidance.

## Verification Review

- Automated checks expected:
- Manual checks expected:
- Verification gaps:

## Executor Guidance

- Read these notes before executing the plan.
- If verdict is `FAIL`, do not execute until the plan is revised and checked again.
```

## Output

Return one of:

- `PASS` — plan is ready to execute
- `PASS WITH NOTES` — plan is usable, but note minor risks
- `FAIL` — plan needs revision before execution

Also report the written plan-check file path.

For failures, list blocking issues and exact changes needed.

## Rules

- Write or replace the matching `*-PLAN-CHECK.md` during every plan check.
- Do not edit the plan unless the user asks.
- Do not execute the plan.
- Prefer concrete file and section references.
- The future executor should treat `*-PLAN-CHECK.md` as required context.
