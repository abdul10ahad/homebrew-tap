# AgentWatcher

A menu bar app that keeps your Mac awake while AI coding agents (Claude Code, Codex, Cursor,
Gemini CLI) work, with the lid closed too, and lets it sleep again when they finish.

```sh
brew install --cask abdul10ahad/tap/agentwatcher
```

Or download the zip from [Releases](https://github.com/abdul10ahad/homebrew-tap/releases), unzip it
and move AgentWatcher.app to Applications. It's signed with Developer ID and notarized by Apple.

Uninstalling with `brew uninstall --cask agentwatcher` also removes the lid closed mode's sudoers
rule (`/etc/sudoers.d/agentwatcher`), so it asks for your password if that rule exists.
