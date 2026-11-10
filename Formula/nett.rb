# 由 gotry-io/nett 的发布工作流按 packaging/homebrew/nett.rb 生成（design/release.md 第 3、4 节），填入版本号与
# 两个压缩包的 sha256，推送到 gotry-io/homebrew-tap。改配方只改 nett 仓库中的模板，不在 tap 中手改。
class Nett < Formula
  desc "Self-hosted mesh network for your own machines"
  homepage "https://github.com/gotry-io/nett"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/gotry-io/nett/releases/download/v0.1.5/nett-0.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "2c5f1f103418546e37663a8a8b811d3f714ab614fad4e1279e7b2a64d47e74e3"
  end
  on_intel do
    url "https://github.com/gotry-io/nett/releases/download/v0.1.5/nett-0.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "18001ea1c027bab7e943345ed60c4dcf4b8229d913ad741405352c4a409b5f06"
  end

  depends_on :macos

  def install
    bin.install "nett"
  end

  # 只用英文，与 nett 命令的输出一致（architecture.md 第 14.3 节）
  def caveats
    <<~EOS
      To join the mesh as a native member (root is needed for the utun interface):
        sudo nett install    # prints the line to add to the site description
        nett site apply      # in the site directory, ~/.config/nett by default
        sudo nett install    # finds this machine's desired state there and starts the service
      Run `sudo nett install` again after every `nett site apply` and `brew upgrade nett`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nett --version")
  end
end
