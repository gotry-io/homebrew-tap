cask "quotabar" do
  version "0.0.10"
  sha256 "2444b4fb94567bf12f027dac136b33f711b942e931f7cfe953bfc75adc2c1a9c"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.10/QuotaBar-0.0.10-macos-arm64.zip"
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
