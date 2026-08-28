cask "quotabar" do
  version "0.0.29"
  sha256 "a75c95d01100ddfbf734ace90b4126f2ce7576096aed6c8aa5b4fb444fd91a05"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.29/QuotaBar-0.0.29-macos-arm64.zip"
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
