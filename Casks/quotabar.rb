cask "quotabar" do
  version "0.2.12"
  sha256 "b22328eeb14a9d7d5630f986899ff0799fccbb8746c7fbf76615ac088ca5b522"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.12/QuotaBar-0.2.12-macos-arm64.zip"
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
