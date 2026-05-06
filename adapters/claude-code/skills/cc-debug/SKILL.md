---
name: cc-debug
description: "Investigate and fix bugs with a clear diagnosis before changing code."
argument-hint: "[bug or error]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Reproduce, diagnose, fix, and verify a bug using a structured workflow.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/debug.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/debug.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
