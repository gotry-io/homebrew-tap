class Octl < Formula
  desc "Control and live-stream iOS Simulators and Android devices from your browser"
  homepage "https://github.com/gotry-io/Octopus"
  version "0.6.0"
  # Pre-built, self-contained tarball (octl + its resource bundles). Built and attached to the GitHub
  # release by Octopus's release workflow, which also bumps the version / url / sha256 below.
  url "https://github.com/gotry-io/Octopus/releases/download/v0.6.0/octl-0.6.0-macos-arm64.tar.gz"
  sha256 "37c0a5a7c9752c34f71f4aa68f505b465e12766c8ca7900a89cd7af2db57faa7"
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
