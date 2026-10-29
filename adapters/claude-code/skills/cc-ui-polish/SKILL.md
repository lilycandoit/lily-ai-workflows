---
name: cc-ui-polish
description: "Refine an existing UI for better spacing, hierarchy, consistency, and polish without changing the overall structure."
argument-hint: "[screen or component]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Improve the existing UI with a careful polish pass while preserving the current information architecture and user flow.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/ui-polish.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/ui-polish.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's design constraints, verification, and change boundaries exactly.
</process>
