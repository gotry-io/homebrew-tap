cask "quotabar" do
  version "0.2.0"
  sha256 "ff8d220ba28989596c79e6a5f3cd5d9c66bd45cbb5f8e280872c9ec8dc92b270"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.0/QuotaBar-0.2.0-macos-arm64.zip"
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
