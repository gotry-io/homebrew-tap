cask "quotabar" do
  version "0.0.11"
  sha256 "5a6832e3c80f715a9e37218e163c65f4f0a09fab5bee21ff161b413b029579dd"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.11/QuotaBar-0.0.11-macos-arm64.zip"
  name "QuotaBar"
  desc "Keep coding-agent subscription quota visible from the macOS menu bar"
  homepage "https://quota.gotry.io"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Preferences/io.gotry.quotabar.plist",
    "~/Library/Saved Application State/io.gotry.quotabar.savedState",
  ]
end
