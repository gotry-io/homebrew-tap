cask "quotabar" do
  version "0.2.6"
  sha256 "c151bb214fad0df2f273790ccd87da9a56ade0e0b28447f0b75c07354dc61441"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.6/QuotaBar-0.2.6-macos-arm64.zip"
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
