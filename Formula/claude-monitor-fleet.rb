class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6a3a0ef85ad035ad6246d316d89985f746090db1a1ba778eb078844d705f0b55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "efd282edb8a150f8384083d2b2e64b74a4a1e64b89c168a45b613cdfbc08d1a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "914384697ea50a83f23d5846458cedff54b353417184d85e29ac0e4a5d691d7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16e97c2190182b9ca26e64a583e9fce0fea07031b2f41dc4520c2d1f7b231a71"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
