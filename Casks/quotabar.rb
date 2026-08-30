cask "quotabar" do
  version "0.0.32"
  sha256 "6f9b1eada29ddaab229c1a727ab508a458543e7c21e6e82fc8973321b015df6f"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.32/QuotaBar-0.0.32-macos-arm64.zip"
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
