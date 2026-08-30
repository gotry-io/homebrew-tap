cask "quotabar" do
  version "0.0.30"
  sha256 "68ea8b7e525bf42e79ff1db85f8cf86de6b16df50548f2cc2ce32590f940c3d4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.30/QuotaBar-0.0.30-macos-arm64.zip"
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
