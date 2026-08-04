cask "quotabar" do
  version "0.0.1"
  sha256 "5e3f934917fb6c62fe6f7987111325a47fb4fecbaab2f240f2542fc98dc926ba"

  url "https://github.com/gotry-io/Quota/releases/download/v0.0.1/QuotaBar-0.0.1-macos-arm64.zip"
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
