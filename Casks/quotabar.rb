cask "quotabar" do
  version "0.0.21"
  sha256 "2d9ec3dc52c6c26303b20bba4711cfe97670f2eddc183d5bbc602a798eba8f75"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.21/QuotaBar-0.0.21-macos-arm64.zip"
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
