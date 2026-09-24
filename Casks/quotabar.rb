cask "quotabar" do
  version "0.2.11"
  sha256 "d868a5a69f11ea894287d69b25743c29fdf97f9071fc47ebabbb0f5a0728cf30"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.11/QuotaBar-0.2.11-macos-arm64.zip"
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
