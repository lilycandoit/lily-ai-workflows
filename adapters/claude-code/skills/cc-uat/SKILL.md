---
name: cc-uat
description: "Create or record User Acceptance Testing checklists for UI, browser, mobile, auth, permissions, external service, or manual feature validation."
argument-hint: "[feature, phase, or plan]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Create or record a human-facing User Acceptance Testing checklist without claiming unperformed manual tests passed.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/uat.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/uat.md end-to-end.
Use the current repository's `.planning/` files as context when useful.
Do not create or edit files unless the user explicitly asks to save or record UAT.
</process>
