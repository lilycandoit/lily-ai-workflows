---
name: lily-adopt
description: "Adopt an existing codebase into the Lily planning system without rewriting product code."
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Inspect an existing project, document reality, and create planning files without product-code edits.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/adopt-existing-project.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/adopt-existing-project.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
