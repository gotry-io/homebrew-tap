cask "quotabar" do
  version "0.2.13"
  sha256 "4d907c2d1f76800aa82a9816f1ff5d8da11a995d08a5c9003c34a993f8523dbb"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.13/QuotaBar-0.2.13-macos-arm64.zip"
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
