cask "quotabar" do
  version "0.0.4"
  sha256 "cfe8f0b8af24a30db434663674609748870065f072253c92f7dd53e41fd30cca"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.4/QuotaBar-0.0.4-macos-arm64.zip"
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
