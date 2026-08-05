cask "quotabar" do
  version "0.0.2"
  sha256 "ee9befc95a602e0d694ffa5a378eb481fa8a9a6cb30f4ca2e9368f8fdf4968bb"

  url "https://github.com/gotry-io/Quota/releases/download/v0.0.2/QuotaBar-0.0.2-macos-arm64.zip"
  name "QuotaBar"
  desc "Keep coding-agent subscription quota visible from the macOS menu bar"
  homepage "https://quota.gotry.io"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Preferences/io.gotry.quotabar.plist",
    "~/Library/Saved Application State/io.gotry.quotabar.savedState",
  ]
end
