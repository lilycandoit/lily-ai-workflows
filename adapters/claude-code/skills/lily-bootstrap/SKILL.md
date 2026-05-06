---
name: lily-bootstrap
description: "Bootstrap a brand new project with Lily planning files and project instructions."
argument-hint: "[project description]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Create the initial project planning structure for a new project.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/bootstrap-project.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/bootstrap-project.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
