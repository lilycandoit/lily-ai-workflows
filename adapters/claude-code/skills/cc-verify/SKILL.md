---
name: cc-verify
description: "Verify completed work against plan acceptance criteria before committing or moving on."
argument-hint: "[plan file]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Check completed work against the plan and report PASS, PASS WITH GAPS, or FAIL.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/verify-work.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/verify-work.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
