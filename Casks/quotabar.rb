cask "quotabar" do
  version "0.0.9"
  sha256 "a99d09e195e5bfee06d8c2c895a686d35afcabfa602bb5c111190f57922f091f"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.9/QuotaBar-0.0.9-macos-arm64.zip"
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
