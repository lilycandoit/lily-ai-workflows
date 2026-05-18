---
name: cc-ship
description: "Publish completed work by pushing, creating a PR, tagging, or preparing a release only when explicitly requested."
argument-hint: "[push | pr | release]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Ship completed work only after explicit user request and preflight checks.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/ship.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/ship.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
