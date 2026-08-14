class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "58b699e5432c2fc25c6a6e564e101f745f1c6dc19fbd9783ec0048461b436f9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8d78175c8adca17918469bbc8c82f2eba0ff59bdcbaaa227c84821c2aacf58a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8b29c782b6beca63922585cabbb6d6de920766895a4d9ca5cdcbc779a6aeb65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fffd8fc7e4b8d1a72256977c5ef3a1a4e261aa79c280a2d32f24e44aed8d715c"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
