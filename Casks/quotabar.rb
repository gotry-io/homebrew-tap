cask "quotabar" do
  version "0.2.4"
  sha256 "4c5f53b6ac8d2d03f85f2c34d96bcd73dabd2614e05b0545d52333d8b31a6d05"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.4/QuotaBar-0.2.4-macos-arm64.zip"
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
