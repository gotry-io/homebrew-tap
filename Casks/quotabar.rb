cask "quotabar" do
  version "0.0.5"
  sha256 "bc9217a56f5ffe0bd87271ab4c9dbb05d611ab7f5ba0a94d329dd6c1195094fe"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.5/QuotaBar-0.0.5-macos-arm64.zip"
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
