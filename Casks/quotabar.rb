cask "quotabar" do
  version "0.0.39"
  sha256 "70c756cd79031d53cc5f089560e6ae15cd2c2cdf91dfe93d1511c7dfacf3dac6"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.39/QuotaBar-0.0.39-macos-arm64.zip"
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
