cask "quotabar" do
  version "0.2.18"
  sha256 "5b729eb91454aac4c5ce89a85044ae15cf7d74ff839419e961dc9bf2ee69265e"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.18/QuotaBar-0.2.18-macos-arm64.zip"
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
