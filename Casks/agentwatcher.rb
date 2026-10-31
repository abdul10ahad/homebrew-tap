cask "agentwatcher" do
  version "1.0.5"
  sha256 "588dfaa2d7113c7c64f7bc22243d98dc121e76bd937434c5d01f3bd5c50ea8ac"

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
