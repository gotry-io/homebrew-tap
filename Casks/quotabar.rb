cask "quotabar" do
  version "0.0.14"
  sha256 "862058ec1b060c800f7d47420a2513400f657d162797d670465f534b40ce995b"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.14/QuotaBar-0.0.14-macos-arm64.zip"
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
