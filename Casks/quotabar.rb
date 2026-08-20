cask "quotabar" do
  version "0.0.18"
  sha256 "e7171137542862097df217499249a862e5cf452935ac1d2980de639c092c9828"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.18/QuotaBar-0.0.18-macos-arm64.zip"
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
