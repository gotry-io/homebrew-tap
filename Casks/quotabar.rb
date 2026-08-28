cask "quotabar" do
  version "0.0.28"
  sha256 "f524336b9dee54790928f4908e7c7151569c0437367547ecef4fdc0584233a54"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.28/QuotaBar-0.0.28-macos-arm64.zip"
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
