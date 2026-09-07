cask "quotabar" do
  version "0.0.42"
  sha256 "0c8c550efce87357d843d0d28053718c680f07b1a5256ff8e17936024af63544"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.42/QuotaBar-0.0.42-macos-arm64.zip"
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
