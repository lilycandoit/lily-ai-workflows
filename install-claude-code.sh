#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.claude/custom-workflows"
mkdir -p "$HOME/.claude/skills"

rsync -a "$ROOT/workflows/" "$HOME/.claude/custom-workflows/"

if [ -d "$ROOT/adapters/claude-code/skills" ]; then
  # Remove obsolete Lily/Claude Code skill aliases from older installs. Keep non-Lily skills such as GSD intact.
  find "$HOME/.claude/skills" -maxdepth 1 -type f -name 'lily-*.md' -delete
  find "$HOME/.claude/skills" -maxdepth 1 -type d -name 'lily-*' -exec rm -rf {} +
  find "$HOME/.claude/skills" -maxdepth 1 -type d -name 'cc-*' -exec rm -rf {} +
  rsync -a "$ROOT/adapters/claude-code/skills/" "$HOME/.claude/skills/"
fi

echo "Installed Lily workflows for Claude Code."
echo "Workflows: $HOME/.claude/custom-workflows"
echo "Skills:    $HOME/.claude/skills"
