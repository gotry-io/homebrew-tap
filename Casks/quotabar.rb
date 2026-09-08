cask "quotabar" do
  version "0.0.44"
  sha256 "d1c1fb123700e3fdb3e96669a2f120713730dda193df57334e5e2744eeb11ae8"

  url "https://github.com/gotry-io/Quota/releases/download/menubar-v0.0.44/QuotaBar-0.0.44-macos-arm64.zip"
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
