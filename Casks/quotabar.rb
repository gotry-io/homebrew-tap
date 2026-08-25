cask "quotabar" do
  version "0.0.25"
  sha256 "e283df180225f9b450d51e93c0f85223e8ea2b40f2f3e5d2d5c59570fe1f93d4"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.25/QuotaBar-0.0.25-macos-arm64.zip"
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
