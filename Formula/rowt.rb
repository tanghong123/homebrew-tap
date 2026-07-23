class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v3.0.2.tar.gz"
  sha256 "11b578028121ca5b2028ae2048e1e286e05e2880cbd7e039ed439d98647f141a"
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

  def post_install
    # If the auto-reload/watchdog LaunchAgent is installed, refresh it so this
    # upgrade picks up the new version and clears any launchd backoff from the
    # binary swap (its RunAtLoad tick also recovers a router that went down during
    # the upgrade). `watch refresh` is sudo-free and a no-op when not installed;
    # never let it fail the install.
    system libexec/"bin/rowt", "watch", "refresh"
  rescue StandardError
    nil
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
    # The watchdog LaunchAgent is refreshed automatically on upgrade (post_install
    # runs `rowt watch refresh`), so no manual step is needed. If that ever fails
    # (e.g. no GUI session during the upgrade), `rowt watch install` re-syncs it.
    plist = File.expand_path("~/Library/LaunchAgents/club.annaslife.rowt.watch.plist")
    if File.exist?(plist)
      s += <<~EOS

        The rowt watchdog was refreshed for this version automatically. If the
        auto-reload/recovery ever seems stale, re-sync it with:  rowt watch install
      EOS
    end
    s
  end

  test do
    assert_match "rowt 3.0.2", shell_output("#{bin}/rowt version")
  end
end
