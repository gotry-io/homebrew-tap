cask "quotabar" do
  version "0.2.17"
  sha256 "3da2152224c53d86204b1887550435571235a74bc66e473641445c8f2d2ce8d4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.17/QuotaBar-0.2.17-macos-arm64.zip"
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
