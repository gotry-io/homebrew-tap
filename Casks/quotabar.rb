cask "quotabar" do
  version "0.0.15"
  sha256 "7df430c4a4971832184e56a527fc34d8fb2550064fe9324da22107e5efb5f200"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.15/QuotaBar-0.0.15-macos-arm64.zip"
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
