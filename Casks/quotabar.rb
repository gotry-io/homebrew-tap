cask "quotabar" do
  version "0.0.27"
  sha256 "ea75a96a32d86aea34966366521075cff05a12a24dff166ab359fae373332955"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.27/QuotaBar-0.0.27-macos-arm64.zip"
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
