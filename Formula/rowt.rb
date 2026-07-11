class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v2.3.3.tar.gz"
  sha256 "c298003fb88356ab5c8e21c49cdcad3a1af849cafc67f1446fcacb7256f44db7"
  license "MIT"

  # Build-only: the `rowt monitor` TUI is a small Rust/ratatui binary.
  depends_on "rust" => :build
  depends_on "jq"
  depends_on :macos
  depends_on "python@3.12"
  depends_on "sing-box"

  def install
    # rowt resolves its own dir via BASH_SOURCE (parent of bin/), so keep the
    # tree together in libexec and symlink the entry point onto PATH.
    libexec.install "bin", "config", "lima"

    # Build the read-only TUI companion into libexec/bin next to bin/rowt so
    # `rowt monitor` finds it (also symlinked onto PATH as `rowt-monitor`).
    # Guarded so the formula still installs from older tarballs without it.
    if File.directory?("rowt-monitor")
      cd "rowt-monitor" do
        system "cargo", "install", *std_cargo_args(root: libexec, path: ".")
      end
      bin.install_symlink libexec/"bin/rowt-monitor"
    end

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
    assert_match "rowt 2.3.3", shell_output("#{bin}/rowt version")
  end
end
