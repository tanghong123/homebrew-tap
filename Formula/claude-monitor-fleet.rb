class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.99.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ffef439766659c97fcbf580c6b09f817621086f4c63a3f73232a329404c21908"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cef466a39153f404bd714ec740bf084738e1831789d76124105aeb60cc743d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3b7bde127e5c9a95fcdb55f564654d7a3960db574ff44e031ec2a2cf8480174"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f8b539977c024d5d333ca994e166a93b2ebb1c7f89e75e632404c14713466b3"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
