cask "quotabar" do
  version "0.0.36"
  sha256 "f9ae64f0d5048becde9ae67b540e4b37aae64d68011612c568e2f1f5907db77f"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.36/QuotaBar-0.0.36-macos-arm64.zip"
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
