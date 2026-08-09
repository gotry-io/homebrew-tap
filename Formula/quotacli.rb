class Quotacli < Formula
  desc "Collect local provider quota and diagnose Relay readiness from one CLI"
  homepage "https://quota.gotry.io"
  url "https://registry.npmjs.org/@gotry-io/quotacli/-/quotacli-0.0.3.tgz"
  sha256 "94368b77c261cac44806b677dd686b5bb7e2a51dbb5ec8d83e810459a34a5724"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quotacli version")
  end
end
