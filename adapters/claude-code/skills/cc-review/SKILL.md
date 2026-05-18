---
name: cc-review
description: "Review code or planning artifacts for bugs, regressions, missing tests, and risks."
argument-hint: "[files or scope]"
allowed-tools:
  - Read
  - Bash
  - Grep
  - Glob
---

<objective>
Provide review findings first, ordered by severity, without editing unless asked.
</objective>

<execution_context>
@$HOME/.claude/custom-workflows/review.md
</execution_context>

<context>
$ARGUMENTS
</context>

<process>
Execute the Lily workflow from @$HOME/.claude/custom-workflows/review.md end-to-end.
Use the current repository's `.planning/` files as the project source of truth when they exist.
Follow the workflow's edit, verification, git, and push policies exactly.
</process>
