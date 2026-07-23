class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "1eccecd92b7db8034758182448c8977e53cd055f1c9fd3b6e72be04b540e6141"
  license "MIT"

  # Build-only: the `rowt monitor` TUI is a small Rust/ratatui binary.
  depends_on "rust" => :build
  depends_on "jq"
  depends_on :macos
  depends_on "python@3.12"
  depends_on "sing-box"

  def install
    # rowt resolves its own dir via BASH_SOURCE (parent of bin/), so keep the
    # tree together in libexec and symlink the entry point onto PATH. The docs go
    # in too so `rowt onboard` / the "rowt" agent skill can point at them on disk
    # (README = full user guide, DESIGN = how the routing works).
    libexec.install "bin", "config", "lima"
    libexec.install "README.md", "DESIGN.md" if File.exist?("README.md")
    # Ship the agent skill so `rowt skill install` can link it into ~/.claude/skills
    # (points at this stable opt path, so a later `brew upgrade` refreshes it).
    libexec.install "skills" if File.directory?("skills")

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
    s = <<~EOS
      First run:
        rowt fetch          # download sing-box (or it uses the brew one)
        rowt skill install  # (optional) link the rowt skill so an agent can drive setup
        rowt onboard        # guided setup — shows the next step

      CLI tools ignore the macOS system proxy. To get the rowt-proxy-on /
      rowt-proxy-off aliases (point this shell's CLI env at rowt, or clear it),
      add this line to your ~/.zshrc (after `brew shellenv`):
        eval "$(rowt shell-init)"

      Mode `vm` additionally needs Lima + socket_vmnet:
        brew install lima socket_vmnet
    EOS
    # If the auto-reload/watchdog LaunchAgent is already installed, this is an
    # upgrade: the plist is only rewritten by `watch install`, so newer agent
    # behaviour (e.g. the liveness watchdog's StartInterval) won't take effect
    # until it's re-run. Only nag users who actually have the agent.
    plist = File.expand_path("~/Library/LaunchAgents/club.annaslife.rowt.watch.plist")
    if File.exist?(plist)
      s += <<~EOS

        You have the rowt watchdog installed. Re-run this once to pick up this
        version's auto-recover agent (a plain `brew upgrade` won't refresh it):
          rowt watch install
      EOS
    end
    s
  end

  test do
    assert_match "rowt 3.0.1", shell_output("#{bin}/rowt version")
  end
end
