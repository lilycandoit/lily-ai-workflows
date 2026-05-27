---
name: cc-test-plan
description: "Create a testing strategy for a feature, phase, or plan before or during implementation. Use for deciding unit, integration, E2E, manual/UAT checks, test commands, and testing gaps."
argument-hint: "[feature, phase, or plan]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Create a lightweight testing strategy without editing files by default.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/test-plan.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/test-plan.md end-to-end.
Use the current repository's `.planning/` files as context when useful.
Do not create or edit files unless the user explicitly asks to save the test plan.
</process>
