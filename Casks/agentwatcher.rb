cask "agentwatcher" do
  version "1.0.9"
  sha256 "2b8e082bb0b573b74d5b1a85f53dc017160c3eb8108b56700c334e669ebb4747"

  url "https://github.com/abdul10ahad/homebrew-tap/releases/download/v#{version}/AgentWatcher-#{version}.zip"
  name "AgentWatcher"
  desc "Keeps the computer awake while AI coding agents work, lid closed too"
  homepage "https://abdul10ahad.github.io/homebrew-tap/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates it in place; brew upgrade would run the uninstall below and drop lid closed mode
  auto_updates true
  depends_on macos: :sonoma

  app "AgentWatcher.app"

  uninstall quit:   "com.abdulahad.AgentWatcher",
            delete: "/etc/sudoers.d/agentwatcher"

  zap trash: [
    "~/Library/Caches/com.abdulahad.AgentWatcher",
    "~/Library/Preferences/com.abdulahad.AgentWatcher.plist",
  ]
end
