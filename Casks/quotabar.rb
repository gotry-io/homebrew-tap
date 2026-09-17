cask "quotabar" do
  version "0.2.2"
  sha256 "55d2fe5435ed31996d138063a82ccb9a4d3a05561af95b681aa8a8272a9ba0bc"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.2/QuotaBar-0.2.2-macos-arm64.zip"
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
