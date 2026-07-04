class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v1.3.4.tar.gz"
  sha256 "ebfd01312be649b91a804de6758a64e90d83e1bf248d11aba7c500f8ea04a2f3"
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

      CLI tools ignore the macOS system proxy. To get the rowt-proxy-on /
      rowt-proxy-off aliases (point this shell's CLI env at rowt, or clear it),
      add this line to your ~/.zshrc (after `brew shellenv`):
        eval "$(rowt shell-init)"

      Mode `vm` additionally needs Lima + socket_vmnet:
        brew install lima socket_vmnet
    EOS
  end

  test do
    assert_match "rowt 1.3.4", shell_output("#{bin}/rowt version")
  end
end
