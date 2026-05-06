---
name: cc-progress
description: "Check project progress using Lily workflows and .planning files; identify current state and next action."
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Inspect the current project state from files and recommend the next useful action.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/progress-check.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/progress-check.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
