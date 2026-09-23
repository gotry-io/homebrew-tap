cask "quotabar" do
  version "0.2.10"
  sha256 "4073f4a69f1d196ab6548d1f4cd5e73c81bdd222c06c62492177c2dae16e0045"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.10/QuotaBar-0.2.10-macos-arm64.zip"
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
