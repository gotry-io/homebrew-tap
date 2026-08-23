cask "quotabar" do
  version "0.0.19"
  sha256 "81eda0b8cb6ecaa322f1549d752adeb7cb0d301cfa190cd154270b5ef3ebd62e"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.19/QuotaBar-0.0.19-macos-arm64.zip"
  name "QuotaBar"
  desc "Keep coding-agent subscription quota visible from the macOS menu bar"
  homepage "https://quota.gotry.io"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Preferences/io.gotry.quotabar.plist",
    "~/Library/Saved Application State/io.gotry.quotabar.savedState",
  ]
end
