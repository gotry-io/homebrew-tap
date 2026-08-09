cask "quotabar" do
  version "0.0.3"
  sha256 "bff56a8550b3b78b7877bcae2d5bb72c927e1f24d419c295b65feb7e30aee131"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.3/QuotaBar-0.0.3-macos-arm64.zip"
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
