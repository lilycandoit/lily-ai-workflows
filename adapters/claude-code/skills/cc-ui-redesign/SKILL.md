---
name: cc-ui-redesign
description: "Refresh a screen or product surface with a clearer visual direction while preserving the user flow and business purpose."
argument-hint: "[screen or section]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Deliver a clearer UI direction and a more intentional redesign without breaking the product function or flow.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/ui-redesign.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/ui-redesign.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's hierarchy, accessibility, and implementation boundaries exactly.
</process>
