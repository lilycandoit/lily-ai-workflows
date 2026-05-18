# Codex Adapter For Lily AI Workflows

This project uses Lily AI Workflows.

Shared workflows are installed for Codex at:

- `~/.codex/custom-workflows/`

Project-specific memory lives in:

- `.planning/`

For Codex projects, copy or reference this adapter as `AGENTS.md` in the project root.

Core rule:

- read project instructions
- read `.planning/STATE.md`
- read `.planning/ROADMAP.md`
- follow the relevant workflow file from `~/.codex/custom-workflows/`
- keep project truth in `.planning/`

Common Codex skills:

- `codex-progress`
- `codex-next`
- `codex-plan`
- `codex-execute`
- `codex-verify`
- `codex-commit`
