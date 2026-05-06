---
name: cc-quick
description: "Handle tiny low-risk changes without full phase planning, while preserving Lily discipline."
argument-hint: "[task]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Complete a small low-risk task with minimal process and appropriate verification.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/quick.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/quick.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
