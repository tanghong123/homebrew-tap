class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.93.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "684f6bd591bbc8f615ef034b67da79735a63d1248ee02d6ee8aaebbdd0a1e996"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cf93c9188cbe88ebb275755c0667a037be3585049010acc6975f08d1ebbfeeb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b63c82f32038cef9be790df7a51550b027c3a728eb14ebdf61daf4845fc23fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1dd6de1a5aded350332a405a9d14d8a5ae29b63dac94e6f48c3e2be8feac64d5"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
