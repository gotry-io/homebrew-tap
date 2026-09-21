cask "quotabar" do
  version "0.2.7"
  sha256 "523697e52f1ed8a120312fb6f3847072653724055aac61214e59a6a5a4a8de88"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.7/QuotaBar-0.2.7-macos-arm64.zip"
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
