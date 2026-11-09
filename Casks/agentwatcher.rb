cask "agentwatcher" do
  version "1.0.8"
  sha256 "1e5d10734ef905caa89bae8ca8164e306311034317e79b388d1c9555883bdd8b"

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
