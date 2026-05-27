---
name: cc-consult
description: "Strategic mentor workflow for thinking through project, feature, roadmap, product, architecture, or codebase decisions before planning or implementation."
argument-hint: "[situation or decision]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Provide strategic consultation in chat, clarifying the real decision, options, tradeoffs, missing information, and a direct recommendation before planning or implementation.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/consult.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/consult.md end-to-end.
Use the current repository's `.planning/` files as context when useful.
Do not create or edit files unless the user explicitly asks to save the consultation outcome.
</process>
