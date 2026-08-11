cask "quotabar" do
  version "0.0.8"
  sha256 "a219d295aaa9e184e42852c1425d306516c28ed8cf4588d2f873b4172a5bee5e"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.8/QuotaBar-0.0.8-macos-arm64.zip"
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
