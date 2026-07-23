class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v3.0.7.tar.gz"
  sha256 "3c6de21fbf93cd1deec8cd290bbc201213e7ce30c61031baf6af56e05fc7b6a8"
  license "MIT"

  depends_on "jq"
  depends_on :macos
  depends_on "python@3.12"
  depends_on "sing-box"

  # The `rowt monitor` TUI is a small Rust/ratatui binary. On Apple Silicon we pour
  # a prebuilt one so installs need NO Rust toolchain (which would pull libgit2 etc.);
  # on Intel we still build it from source.
  on_arm do
    resource "rowt-monitor" do
      url "https://github.com/tanghong123/rowt/releases/download/v3.0.7/rowt-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "49c6e5d891e46236c790e6488a4d59f226c40f8a383279ec71e59ced56a44f22"
    end
  end
  on_intel do
    depends_on "rust" => :build
  end

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

    # Put the read-only TUI companion in libexec/bin next to bin/rowt so
    # `rowt monitor` finds it (also symlinked onto PATH as `rowt-monitor`).
    # Apple Silicon: install the prebuilt binary (no Rust build). Intel: compile
    # from the source tree. Guarded so an older tarball without it still installs.
    if Hardware::CPU.arm?
      # the TUI *and* its traffic-metrics collector sidecar (both prebuilt)
      resource("rowt-monitor").stage { (libexec/"bin").install "rowt-monitor", "rowt-collector" }
      bin.install_symlink libexec/"bin/rowt-monitor"
    elsif File.directory?("rowt-monitor")
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
      enable shell integration:
        rowt shell-init --install   # appends to ~/.zshrc (or add by hand:
                                    #   eval "$(rowt shell-init)")

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
    assert_match "rowt 3.0.7", shell_output("#{bin}/rowt version")
  end
end
