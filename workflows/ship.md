# Ship Workflow

Goal: publish completed work by pushing, creating a PR, tagging, or preparing a release.

Use only when the user explicitly asks to push, publish, create a PR, release, or ship.

## Read

Read:

1. project instruction file
2. `.planning/STATE.md`
3. latest summaries
4. git status and branch information
5. remote configuration

## Preflight

Check:

1. working tree status
2. current branch
3. commits ahead or behind upstream
4. verification status
5. whether secrets or local-only files are staged

## Actions

Depending on the user's request:

- push current branch
- create upstream branch
- create pull request
- prepare release notes
- create tag

## Rules

- Do not push unless explicitly requested.
- Do not ship with known failing verification unless the user explicitly accepts the risk.
- Do not include unrelated local files.
- Summarize what was pushed or prepared.

## Output

Return:

- branch
- remote
- commits included
- verification status
- PR or release URL, if created
- remaining manual steps
