cask "quotabar" do
  version "0.0.41"
  sha256 "0bd293f141819441cff8132dad540546d2a1b41824efffefc61cc02922297d98"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.41/QuotaBar-0.0.41-macos-arm64.zip"
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
