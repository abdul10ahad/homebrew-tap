cask "agentwatcher" do
  version "1.0.6"
  sha256 "8e3cc74fe23ec4a929bcf1d354bdbbd0d2edd717cecc47a6dfc7dd85a8fe06ce"

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
