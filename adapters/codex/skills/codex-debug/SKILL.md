---
name: codex-debug
description: Investigate and fix bugs using Lily AI workflows. Use for failing tests, regressions, runtime errors, or unclear broken behavior requiring diagnosis before edits.
---

# Debug issue

Follow the shared Lily workflow:

`~/.codex/custom-workflows/debug.md`

Use the current repository's `.planning/` folder as the project source of truth when it exists.

Keep the skill wrapper lean: load and follow the workflow file, then apply Codex's normal coding, verification, and git discipline.
