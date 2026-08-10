cask "quotabar" do
  version "0.0.6"
  sha256 "6457a861488c7be323dcc290716a67d20e56cd4740b38fe5aeb453d408ad7edd"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.6/QuotaBar-0.0.6-macos-arm64.zip"
  name "QuotaBar"
  desc "Keep coding-agent subscription quota visible from the macOS menu bar"
  homepage "https://quota.gotry.io"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "QuotaBar.app"
  binary "#{appdir}/QuotaBar.app/Contents/Helpers/quotacli"

  zap trash: [
    "~/Library/Preferences/io.gotry.quotabar.plist",
    "~/Library/Saved Application State/io.gotry.quotabar.savedState",
  ]

  caveats <<~EOS
    QuotaBar now provides the macOS quotacli command. If the retired Formula is still installed,
    remove it with `brew uninstall quotacli` before installing this Cask.
  EOS
end
