cask "tildaz" do
  version "0.10.7"
  sha256 "9085f065f154f0579ffa314e35de6273b5640725acfd7e8cf7fbd959a603cdc6"

  url "https://github.com/ensky0/tildaz/releases/download/v#{version}/tildaz-v#{version}-macos.dmg"
  name "TildaZ"
  desc "Quake-style drop-down terminal built on libghostty-vt"
  homepage "https://tildaz.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "TildaZ.app"

  uninstall launchctl: "me.ensky0.tildaz",
            quit:      "me.ensky0.tildaz"

  zap trash: [
    "~/.config/tildaz",
    "~/Library/LaunchAgents/me.ensky0.tildaz.plist",
    "~/Library/Logs/tildaz",
  ]

  caveats <<~EOS
    TildaZ is signed with a self-signed certificate and is not notarized.
    If macOS blocks the first launch, run:
      xattr -d com.apple.quarantine #{appdir}/TildaZ.app

    Then grant Input Monitoring and Device Control and Data Access
    (Accessibility before macOS 27) in System Settings > Privacy & Security.
  EOS
end
