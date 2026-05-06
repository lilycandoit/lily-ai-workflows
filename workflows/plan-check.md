# Plan Check Workflow

Goal: review a plan before execution and catch scope, verification, or context problems early.

Use this after creating a plan and before executing it.

## Read

Read:

1. target `*-PLAN.md`
2. `.planning/STATE.md`
3. `.planning/ROADMAP.md`
4. `.planning/REQUIREMENTS.md`
5. `.planning/DECISIONS.md`
6. files listed in the plan's `read_first` section, if needed to judge feasibility

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

## Output

Return one of:

- `PASS` — plan is ready to execute
- `PASS WITH NOTES` — plan is usable, but note minor risks
- `FAIL` — plan needs revision before execution

For failures, list blocking issues and exact changes needed.

## Rules

- Do not edit the plan unless the user asks.
- Do not execute the plan.
- Prefer concrete file and section references.
