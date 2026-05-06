---
name: cc-next
description: "Move from a completed phase to the next phase using ROADMAP.md and Lily planning state."
argument-hint: "[phase]"
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
---

<objective>
Advance project planning from a completed phase to the next roadmap phase without implementing work.
</objective>

<execution_context>
@$HOME/.claude/lily-workflows/next-phase.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/lily-workflows/next-phase.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
