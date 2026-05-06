#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.claude/lily-workflows"
mkdir -p "$HOME/.claude/skills"

rsync -a "$ROOT/workflows/" "$HOME/.claude/lily-workflows/"

if [ -d "$ROOT/adapters/claude-code/skills" ]; then
  # Remove obsolete flat Lily skill files from older installs. Keep non-Lily skills such as GSD intact.
  find "$HOME/.claude/skills" -maxdepth 1 -type f -name 'lily-*.md' -delete
  rsync -a "$ROOT/adapters/claude-code/skills/" "$HOME/.claude/skills/"
fi

echo "Installed Lily workflows for Claude Code."
echo "Workflows: $HOME/.claude/lily-workflows"
echo "Skills:    $HOME/.claude/skills"

# execute the script: chmod +x install-claude-code.sh