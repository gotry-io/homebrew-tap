cask "quotabar" do
  version "0.0.22"
  sha256 "58fe46321206f3755c27d4d51542a0f07ec380c7ae17b3b01aa8224d618e7955"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.22/QuotaBar-0.0.22-macos-arm64.zip"
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
