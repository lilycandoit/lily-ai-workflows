---
name: cc-add-tests
description: "Add missing automated tests for existing or completed work. Use after implementation, after cc-test-plan, or when verification finds test gaps."
argument-hint: "[feature, phase, plan, or files]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Propose and add focused automated tests for completed or existing work, then run relevant checks.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/add-tests.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/add-tests.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Do not push or commit unless the user explicitly asks or runs the git checkpoint workflow.
</process>
