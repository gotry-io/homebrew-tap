cask "quotabar" do
  version "0.0.34"
  sha256 "ddd49f686a357743d904674072cd9e504a9b5a036d34e193bb9cdbb3361a6097"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.34/QuotaBar-0.0.34-macos-arm64.zip"
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
