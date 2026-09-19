cask "quotabar" do
  version "0.2.5"
  sha256 "3502688a27eec2b5fe657dc3f4ab85ff4395a96f144ba07cfc2bcfe5b2620cd9"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.5/QuotaBar-0.2.5-macos-arm64.zip"
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
