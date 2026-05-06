---
name: cc-plan
description: "Create one focused implementation plan for the current phase using Lily planning files."
argument-hint: "[phase or feature]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Create a focused executable plan with acceptance criteria and verification mapping.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/create-plan.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/create-plan.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
