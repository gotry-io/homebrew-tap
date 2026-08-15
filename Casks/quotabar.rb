cask "quotabar" do
  version "0.0.16"
  sha256 "c0a6991482ccc8d0d1da51590c57aade7954cf3ee5f7af28d7c54d1bafb1f2b9"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.16/QuotaBar-0.0.16-macos-arm64.zip"
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
