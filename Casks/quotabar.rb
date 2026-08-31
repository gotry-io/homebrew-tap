cask "quotabar" do
  version "0.0.35"
  sha256 "ed5d871109acee78cb06720c785534d6c9fd954b08bb77cd00455ac91ccba0ef"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.35/QuotaBar-0.0.35-macos-arm64.zip"
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
