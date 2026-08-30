class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v3.4.11.tar.gz"
  sha256 "299249787a79fbd496cca1a31517a3687eb0643961acbd9bed91c1efa151938d"
  license "MIT"

  depends_on "jq"
  depends_on :macos
  depends_on "sing-box"

  # The `rowt monitor` TUI is a small Rust/ratatui binary. On Apple Silicon we pour
  # a prebuilt one so installs need NO Rust toolchain (which would pull libgit2 etc.);
  # on Intel we still build it from source.
  on_arm do
    resource "rowt-monitor" do
      url "https://github.com/tanghong123/rowt/releases/download/v3.4.11/rowt-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b9180a125ae0fa9305f0eefd4a8d3b9dfd01eedf5e6a2a28a6485f50017283f6"
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
    # …and the knack foreign-owner recipe next to it, so `rowt skill recipe` has
    # something to print on a brew install: it resolves to
    # libexec/share/knack/rowt.toml under the stable opt prefix, which is what
    # `knack lib adopt rowt --via "rowt:$(rowt skill recipe)"` loads.
    libexec.install "share" if File.directory?("share")

    # Put the read-only TUI companion in libexec/bin next to bin/rowt so
    # `rowt monitor` finds it (also symlinked onto PATH as `rowt-monitor`).
    # Apple Silicon: install the prebuilt binary (no Rust build). Intel: compile
    # from the source tree. Guarded so an older tarball without it still installs.
    if Hardware::CPU.arm?
      # the TUI *and* its traffic-metrics collector sidecar (both prebuilt)
      resource("rowt-monitor").stage do
        (libexec/"bin").install "rowt-monitor", "rowt-collector"
        # Inert unless a shadow comparison is switched on (see caveats).
        (libexec/"bin").install "rowt-render", "rowt-watch-tick"
        # The Rust port of the CLI. NOT optional since 3.3.7: bin/rowt runs
        # it for every ported helper (`rowt-rs _py …`, `rowt-rs _splitter`),
        # which is what let python@3.12 leave the dependency list. Also
        # symlinked as `rowt-rust` to be run side by side with the shell.
        (libexec/"bin").install "rowt-rs"
      end
      bin.install_symlink libexec/"bin/rowt-monitor"
      bin.install_symlink libexec/"bin/rowt-rs" => "rowt-rust"
    elsif File.directory?("rowt-monitor")
      cd "rowt-monitor" do
        system "cargo", "install", *std_cargo_args(root: libexec, path: ".")
      end
      # rowt-rs is REQUIRED, not a companion: bin/rowt runs it for every ported
      # helper. Without it the shell falls back to config/*.py, and python@3.12
      # is no longer declared — so an Intel install that skipped this would fail
      # on `server add` with "python3 not found". The sidecars (collector,
      # render, watch-tick) stay Apple-Silicon-only; they are opt-in shadows.
      system "cargo", "install", *std_cargo_args(root: libexec, path: "crates/rowt-cli")
      bin.install_symlink libexec/"bin/rowt-monitor"
      bin.install_symlink libexec/"bin/rowt-rs" => "rowt-rust"
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
      rowt-proxy-off aliases, plus rowt-share-on / -off / -status for optional
      tailnet-only sharing through Tailscale Serve, enable shell integration:
        rowt shell-init --install   # appends to ~/.zshrc (or add by hand:
                                    #   eval "$(rowt shell-init)")

      Tailnet sharing defaults to TCP :17890 -> rowt :7890. Restrict that port
      to trusted devices in your tailnet policy: shared peers can use every lane,
      including corp. It never enables Funnel or binds rowt to the LAN.

      On a client Mac, rowt-remote-on <host> configures the current shell and
      rowt-remote-system-on <host> configures macOS apps; the matching -off
      helpers undo each mode. Both expand short Tailscale names through MagicDNS
      and verify the resolved host and port before changing anything. System mode
      requires sudo, preserves the existing bypass list, and should not be used
      while the local rowt watchdog manages system proxy.

      Mode `vm` additionally needs Lima + socket_vmnet:
        brew install lima socket_vmnet

      Travelling somewhere the escape lane isn't needed?
        rowt up local       # no tunnel; block/corp/direct unchanged
                            # (a bare `rowt up` picks this by itself)
        rowt up host        # back to the tunnel
    EOS
    # Apple Silicon only — Intel builds the monitor from source and gets
    # neither the shadow sidecars nor rowt-rust (the precedent 3.2.7 set).
    if Hardware::CPU.arm?
      s += <<~EOS

        Preview: `rowt-rust` is this same CLI in Rust, installed beside `rowt`.
        Nothing runs it for you and `rowt` does not delegate to it — run the two
        side by side on the same config and compare:
          rowt status   ·   rowt-rust status
        If they ever disagree, that is worth reporting.
      EOS
    end
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
    assert_match "rowt 3.4.11", shell_output("#{bin}/rowt version")
    # The port bakes its version from bin/rowt at BUILD time, so a mismatch
    # here means the prebuilt asset and the source tarball came from different
    # commits — which is exactly the mistake worth catching before a user does.
    # No longer arm-only: since 3.3.7 the Intel branch builds rowt-rs too,
    # because bin/rowt needs it and python@3.12 is no longer there to fall back
    # on. If that build path is broken, this is what says so.
    assert_match "rowt 3.4.11", shell_output("#{bin}/rowt-rust version")
  end
end
