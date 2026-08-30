cask "quotabar" do
  version "0.0.31"
  sha256 "be3cd3f177c7c2e4eb872c468b6cc4463e843865b2733ccd1795c17122631594"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.31/QuotaBar-0.0.31-macos-arm64.zip"
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
