# 由 gotry-io/nett 的发布工作流按 packaging/homebrew/nett.rb 生成（design/release.md 第 3、4 节），填入版本号与
# 两个压缩包的 sha256，推送到 gotry-io/homebrew-tap。改配方只改 nett 仓库中的模板，不在 tap 中手改。
class Nett < Formula
  desc "Self-hosted mesh network for your own machines"
  homepage "https://github.com/gotry-io/nett"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/gotry-io/nett/releases/download/v0.1.1/nett-0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "0cd8f586bec81de3328f56aa5bb28e113019f93d823263a033effed9fb05afa7"
  end
  on_intel do
    url "https://github.com/gotry-io/nett/releases/download/v0.1.1/nett-0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "c4857034949a08ed5947058a8850714b03019627f10394295f5041abb9c88ff1"
  end

  depends_on :macos

  def install
    bin.install "nett"
  end

  # 只用英文，与 Homebrew 社区一致：Homebrew 运行配方时固定使用英文区域设置，配方无法按用户的语言选择；
  # 执行这些命令时，nett 自己的输出按系统语言显示
  def caveats
    <<~EOS
      To join the mesh as a native member (root is needed for the utun interface):
        sudo nett mesh install                             # prints the line to add to the site description
        sudo nett mesh install --config <desired.json>     # after nett site build: starts the service
      After every `brew upgrade nett`, run `sudo nett mesh install` again: the service runs a root-only copy.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nett --version")
  end
end
