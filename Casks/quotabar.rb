cask "quotabar" do
  version "0.2.8"
  sha256 "24fcaeb50c55247dc82087807810bca39092b20cee7d535f6dfec9e4ed10e8d4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.8/QuotaBar-0.2.8-macos-arm64.zip"
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
