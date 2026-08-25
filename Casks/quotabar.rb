cask "quotabar" do
  version "0.0.23"
  sha256 "b1bb0af1d521d40fc728b428407892ad41b43e3e40f3c790b793b3d43cc26da9"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.23/QuotaBar-0.0.23-macos-arm64.zip"
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
