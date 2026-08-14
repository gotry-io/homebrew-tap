cask "quotabar" do
  version "0.0.13"
  sha256 "e235c8ee1c2a473806af2a94b92367ddefe74ff86fa18c86c8213dc952113520"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.13/QuotaBar-0.0.13-macos-arm64.zip"
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
