cask "quotabar" do
  version "0.0.37"
  sha256 "5dbc9691511518e488360a9fc3acf89b9bab5ce0453ddfa2ffa5652a83e969b4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.37/QuotaBar-0.0.37-macos-arm64.zip"
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
