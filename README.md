# AgentWatcher

A menu bar app that keeps your Mac awake while AI coding agents (Claude Code, Codex, Cursor,
Gemini CLI) work, with the lid closed too, and lets it sleep again when they finish.

Website and download: https://abdul10ahad.github.io/homebrew-tap/

```sh
brew install --cask abdul10ahad/tap/agentwatcher
```

It's signed with Developer ID and notarized by Apple, and updates itself from inside the app.
This repository holds only the cask, the website and the release builds.

Uninstalling with `brew uninstall --cask agentwatcher` also removes the lid closed mode's sudoers
rule (`/etc/sudoers.d/agentwatcher`), so it asks for your password if that rule exists.
