cask "quotabar" do
  version "0.2.14"
  sha256 "6621a188d75f8c6a938f7ec089763fd0f959639915f660f69199dbe5186a659e"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.14/QuotaBar-0.2.14-macos-arm64.zip"
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
