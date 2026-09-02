cask "quotabar" do
  version "0.0.38"
  sha256 "fe80215217edef1cd1076ac566347a423083411d43267c854a8cab1b10a81f76"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.38/QuotaBar-0.0.38-macos-arm64.zip"
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
