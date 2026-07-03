class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "97ae51870224f478438720ad33661d7d076d395b72994ce9accc15f67cfc3d7d"
  license "MIT"

  depends_on "jq"
  depends_on :macos
  depends_on "python@3.12"
  depends_on "sing-box"

  def install
    # rowt resolves its own dir via BASH_SOURCE (parent of bin/), so keep the
    # tree together in libexec and symlink the entry point onto PATH.
    libexec.install "bin", "config", "lima"
    bin.install_symlink libexec/"bin/rowt"
  end

  def caveats
    <<~EOS
      First run:
        rowt fetch          # download sing-box (or it uses the brew one)
        rowt onboard        # guided setup — shows the next step

      CLI tools ignore the macOS system proxy. To point this shell at rowt, add
      to your ~/.zshrc:
        alias rowt-proxy-on='eval "$(rowt proxy env)"'
        alias rowt-proxy-off='eval "$(rowt proxy env --off)"'

      Mode `vm` additionally needs Lima + socket_vmnet:
        brew install lima socket_vmnet
    EOS
  end

  test do
    assert_match "rowt 1.0.1", shell_output("#{bin}/rowt version")
  end
end
