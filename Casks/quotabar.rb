cask "quotabar" do
  version "0.0.24"
  sha256 "673f49e6949b8aacc027af1b8a48c6b4f27c2322b739150c4df6c00a5fd12bf5"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.24/QuotaBar-0.0.24-macos-arm64.zip"
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
