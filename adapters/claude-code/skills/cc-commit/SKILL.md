---
name: cc-commit
description: "Create a small local git checkpoint after verified work; never push unless explicitly requested."
argument-hint: "[commit scope]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Review diffs and create an atomic local commit for verified work without pushing.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/git-checkpoint.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/git-checkpoint.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
