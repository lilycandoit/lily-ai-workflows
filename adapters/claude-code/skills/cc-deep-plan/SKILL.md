---
name: cc-deep-plan
description: "Create a deeper plan for risky, large, unclear, cross-system, or hard-to-verify work."
argument-hint: "[phase or feature]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
  - Task
---

<objective>
Run deeper research, risk, architecture, and verification passes before writing the plan.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/create-plan-deep.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/create-plan-deep.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
