---
name: lily-recap
description: "Summarize project state from files only for handoff, restart, or fresh context."
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Create a file-based recap without relying on chat history.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/recap.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/recap.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
