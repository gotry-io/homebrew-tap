cask "quotabar" do
  version "0.0.43"
  sha256 "5e96e5d12ab8d7a2180168470b969deebcbf1ed19e8057be5495b9e0602ed43a"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.43/QuotaBar-0.0.43-macos-arm64.zip"
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
