cask "quotabar" do
  version "0.2.15"
  sha256 "8351ae6a05f9cf07ddd4e8ea470776211342c9f0bce3c6713e3aabd11d61b9d4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.15/QuotaBar-0.2.15-macos-arm64.zip"
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
