cask "quotabar" do
  version "0.0.20"
  sha256 "337b162eb80c86cf4aced0a4d27b9ea1091570cb4ef0d2ebbd5571cbd6fb6823"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.20/QuotaBar-0.0.20-macos-arm64.zip"
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
