cask "crate" do
  version "0.1.1"
  sha256 "14ffeb8706a49e79e66b61afbbffb56dc6e5fdd4048bbd40b990d3fd24e50dbd"

  url "https://github.com/jrvgr/crate/releases/download/v#{version}/Crate-v#{version}.dmg"
  name "Crate"
  desc "Syncs music folders to the classic iPod"
  homepage "https://github.com/jrvgr/crate"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Crate.app"

  zap trash: [
    "~/Library/Application Support/Crate",
    "~/Library/Caches/Crate",
    "~/Library/Caches/nl.jrvgr.crate",
    "~/Library/Preferences/nl.jrvgr.crate.plist",
  ]
end
