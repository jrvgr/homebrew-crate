cask "crate" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
