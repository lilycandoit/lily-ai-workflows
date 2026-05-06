---
name: lily-plan-check
description: "Review a Lily PLAN.md before execution for scope, requirements, verification, and risks."
argument-hint: "[plan file]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Check whether a plan is ready to execute and report PASS, PASS WITH NOTES, or FAIL.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/plan-check.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/plan-check.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
