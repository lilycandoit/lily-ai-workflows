---
name: cc-backlog
description: "Capture ideas, bugs, seeds, research topics, or future work in .planning/BACKLOG.md."
argument-hint: "[idea or item]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Record future work without disrupting the current plan.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/backlog.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/backlog.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
