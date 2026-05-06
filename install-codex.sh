#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.codex/lily-workflows"
mkdir -p "$HOME/.codex/skills"

rsync -a "$ROOT/workflows/" "$HOME/.codex/lily-workflows/"

if [ -d "$ROOT/adapters/codex/skills" ]; then
  find "$HOME/.codex/skills" -maxdepth 1 -type d -name 'codex-*' -exec rm -rf {} +
  rsync -a "$ROOT/adapters/codex/skills/" "$HOME/.codex/skills/"
fi

echo "Installed Lily workflows for Codex."
echo "Workflows: $HOME/.codex/lily-workflows"
echo "Skills:    $HOME/.codex/skills"
