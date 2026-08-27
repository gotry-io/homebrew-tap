cask "quotabar" do
  version "0.0.26"
  sha256 "f28fd6c3a8350791ee6fb509433b56ead2ba8e6886acfeb6d46620832df5b716"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.26/QuotaBar-0.0.26-macos-arm64.zip"
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
