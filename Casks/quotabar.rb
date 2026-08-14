cask "quotabar" do
  version "0.0.12"
  sha256 "3499ad5946e1bb8b27aceb10e5d1e4cf093964bc42b28f4f5ded84155d49d643"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.12/QuotaBar-0.0.12-macos-arm64.zip"
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
