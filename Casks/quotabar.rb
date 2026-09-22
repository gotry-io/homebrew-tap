cask "quotabar" do
  version "0.2.9"
  sha256 "38df9a2e7b689dbfb93018514ddb5e07001e8418b9fab0de758685af3e285f1a"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.9/QuotaBar-0.2.9-macos-arm64.zip"
  name "QuotaBar"
  desc "Keep coding-agent subscription quota visible from the macOS menu bar"
  homepage "https://quota.gotry.io"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "QuotaBar.app"

  zap trash: [
    "~/.config/quota/",
    "~/Library/Preferences/io.gotry.quotabar.plist",
    "~/Library/Saved Application State/io.gotry.quotabar.savedState",
  ]
end
