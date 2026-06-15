class Octl < Formula
  desc "Control and live-stream iOS Simulators and Android devices from your browser"
  homepage "https://github.com/gotry-io/Octopus"
  version "0.7.3"
  # Pre-built, self-contained tarball (octl + its resource bundles). Built and attached to the GitHub
  # release by Octopus's release workflow, which also bumps the version / url / sha256 below.
  url "https://github.com/gotry-io/Octopus/releases/download/v0.7.3/octl-0.7.3-macos-arm64.tar.gz"
  sha256 "2ec0409ae267dd1b819b8fe1556725b8afa132bb4756debddec15a938eabc7c3"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    # Keep the binary next to its SwiftPM resource bundles (Web assets, the bundled scrcpy-server) so
    # Bundle.module resolves them; expose `octl` on the PATH via a wrapper that execs the real binary.
    libexec.install "octl"
    libexec.install Dir["*.bundle"]
    bin.write_exec_script libexec/"octl"
  end

  test do
    assert_match "octl", shell_output("#{bin}/octl --help")
  end
end
