class Rowt < Formula
  desc "Split traffic three ways on macOS alongside a corporate VPN"
  homepage "https://github.com/tanghong123/rowt"
  url "https://github.com/tanghong123/rowt/archive/refs/tags/v3.5.9.tar.gz"
  sha256 "68106951c5f5e66a25877cbf82bc921d7c7ca3123cc5f1522d2aef1d60b7a92f"
  license "MIT"

  depends_on "jq"
  depends_on :macos

  # The `rowt monitor` TUI is a small Rust/ratatui binary. On Apple Silicon we pour
  # a prebuilt one so installs need NO Rust toolchain (which would pull libgit2 etc.);
  # on Intel we still build it from source.
  on_arm do
    resource "rowt-monitor" do
      url "https://github.com/tanghong123/rowt/releases/download/v3.5.9/rowt-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "641d788f87f1d3bbb44461fa8d091de2dc5be2e938d880ed55d761bc5ce1048b"
    end
    # The PINNED engine (SINGBOX_VERSION in bin/rowt). Bundling it means a brew
    # install never inherits whatever version brew's own sing-box floats to — a
    # `brew upgrade sing-box` to 1.14.x once swapped the CPU-spinning engine under
    # rowt. Keep this url/sha256 in step with SINGBOX_VERSION on every bump.
    resource "sing-box" do
      url "https://github.com/SagerNet/sing-box/releases/download/v1.13.14/sing-box-1.13.14-darwin-arm64.tar.gz"
      sha256 "73e8967b0fc08e17bce4263ca56ebc394822401a16497a1c4e02316c888202ab"
    end
  end
  on_intel do
    depends_on "rust" => :build
    resource "sing-box" do
      url "https://github.com/SagerNet/sing-box/releases/download/v1.13.14/sing-box-1.13.14-darwin-amd64.tar.gz"
      sha256 "5245d645e847f90bb708da74bc020ae078c28489690756419685c04f56b4e3bb"
    end
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

    # Bundle the pinned sing-box into libexec/bin next to bin/rowt, so
    # `$HERE/bin/sing-box` — rowt's step-0 engine source — is the exact pin,
    # present offline. rowt copies it into its own bin on the first render.
    resource("sing-box").stage do
      # stage may or may not descend into the tarball's top dir, so match both.
      (libexec/"bin").install Dir["sing-box", "*/sing-box"].first
    end

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
    # Deliberately does NOT reload the watchdog LaunchAgent. post_install runs
    # sandboxed: it can `launchctl bootout` the agent but not `bootstrap` it back
    # (verified 2026-09-21 — giving `watch refresh` the real HOME let it reach the
    # bootout while the sandbox blocked the reload, leaving the watchdog unloaded
    # after a plain `brew upgrade`). It does not need to: the running agent already
    # runs the new binary through its ProgramArguments symlink, and that binary's
    # next tick self-heals the plist to this version (rowt 3.5.8, 46feba8).
    # Touching launchd here only risks unloading it.
    nil
  end

  def caveats
    s = <<~EOS
      First run:
        rowt fetch          # (optional) refresh the engine — the pinned sing-box ships bundled
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

      Public Wi-Fi whose login page never loads? Put the venue's portal host in
      the hotspot lane, so it is reached WITHOUT the proxy:
        rowt hotspot add unitedwifi.com
      The watchdog also detects a portal on its own, drops the system proxy and
      opens the login page; `rowt hotspot list` shows the lane.

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
    assert_match "rowt 3.5.9", shell_output("#{bin}/rowt version")
    # The port bakes its version from bin/rowt at BUILD time, so a mismatch
    # here means the prebuilt asset and the source tarball came from different
    # commits — which is exactly the mistake worth catching before a user does.
    # No longer arm-only: since 3.3.7 the Intel branch builds rowt-rs too,
    # because bin/rowt needs it and python@3.12 is no longer there to fall back
    # on. If that build path is broken, this is what says so.
    assert_match "rowt 3.5.9", shell_output("#{bin}/rowt-rust version")
    # The pinned engine ships in the bottle now, not via a floating brew sing-box.
    # Assert it is present and IS the pin, so a bad resource sha/version fails here
    # rather than at a user's first render.
    assert_predicate libexec/"bin/sing-box", :executable?
    assert_match "1.13.14", shell_output("#{libexec}/bin/sing-box version")
  end
end
