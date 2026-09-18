cask "quotabar" do
  version "0.2.3"
  sha256 "ed1f22799a94c3fec24fa8ed5dbb563f9da1d8a0e60a405e295990c23b7e43c8"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.3/QuotaBar-0.2.3-macos-arm64.zip"
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
