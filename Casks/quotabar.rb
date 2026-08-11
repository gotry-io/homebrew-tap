cask "quotabar" do
  version "0.0.7"
  sha256 "29498c0591d085598c31e9fad257579897ed69a2a19d86b79411cfce1f9b389c"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.7/QuotaBar-0.0.7-macos-arm64.zip"
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
