cask "agentwatcher" do
  version "1.0.4"
  sha256 "124f30a9d1decb56421a5dda7cedb3df1ede8bbfff59a56d57044184a4c6abf9"

  url "https://github.com/abdul10ahad/homebrew-tap/releases/download/v#{version}/AgentWatcher-#{version}.zip"
  name "AgentWatcher"
  desc "Keeps the computer awake while AI coding agents work, lid closed too"
  homepage "https://github.com/abdul10ahad/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AgentWatcher.app"

  uninstall quit:   "com.abdulahad.AgentWatcher",
            delete: "/etc/sudoers.d/agentwatcher"

  zap trash: "~/Library/Preferences/com.abdulahad.AgentWatcher.plist"
end
