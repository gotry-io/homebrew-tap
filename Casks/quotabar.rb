cask "quotabar" do
  version "0.0.33"
  sha256 "2098c290f9b2df79ac6fd176aa3c9f8198f466837371c46487c4cc48c7ba080f"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.33/QuotaBar-0.0.33-macos-arm64.zip"
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
