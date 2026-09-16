cask "quotabar" do
  version "0.2.1"
  sha256 "1fb7cf8adc9f9f989735a96d1c6641a3416ed88102f9cac9cd04fcc7c2d0e6d9"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.1/QuotaBar-0.2.1-macos-arm64.zip"
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
