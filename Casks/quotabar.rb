cask "quotabar" do
  version "0.2.16"
  sha256 "e663b886949b98667443eb1f390d17af13b9845c1bb7d7736965b6cc3483b83f"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.2.16/QuotaBar-0.2.16-macos-arm64.zip"
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
