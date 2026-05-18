---
name: cc-execute
description: "Execute one Lily PLAN.md safely, write the matching SUMMARY.md, and update planning state."
argument-hint: "[plan file]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Execute exactly one plan using the project files as source of truth.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/execute-plan.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/execute-plan.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
