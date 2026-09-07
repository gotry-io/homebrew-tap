cask "quotabar" do
  version "0.0.40"
  sha256 "aefa9d2c33f2af9ffe22e54fb0344d9a94a24d623acff42bca6365adab627d13"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.40/QuotaBar-0.0.40-macos-arm64.zip"
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
