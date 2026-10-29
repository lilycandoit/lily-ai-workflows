---
name: cc-ui-audit
description: "Review a screen or component for visual quality, hierarchy, consistency, and accessibility before redesigning or polishing it."
argument-hint: "[screen or component]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Review the UI with a clear, actionable audit and prioritize fixes before making design changes.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/ui-audit.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/ui-audit.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's review, critique, and prioritization rules exactly.
</process>
