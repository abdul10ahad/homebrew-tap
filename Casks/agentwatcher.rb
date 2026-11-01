cask "agentwatcher" do
  version "1.0.7"
  sha256 "4652f777a5c8df86d167a5df185e25452cfe9cf7b862069b8a5067442f8be604"

  url "https://github.com/abdul10ahad/homebrew-tap/releases/download/v#{version}/AgentWatcher-#{version}.zip"
  name "AgentWatcher"
  desc "Keeps the computer awake while AI coding agents work, lid closed too"
  homepage "https://abdul10ahad.github.io/homebrew-tap/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AgentWatcher.app"

  uninstall quit:   "com.abdulahad.AgentWatcher",
            delete: "/etc/sudoers.d/agentwatcher"

  zap trash: [
    "~/Library/Caches/com.abdulahad.AgentWatcher",
    "~/Library/Preferences/com.abdulahad.AgentWatcher.plist",
  ]
end
