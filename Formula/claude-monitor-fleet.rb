class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c97799314c48280d4844f31e07c28b976122020bc2d0dfd385853ad3df48e116"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2e2e3587363a0637c42f56ec0b02f50e49eea9d6c3e98e69e8ff0c64be31bd0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32bd94958a2fd9c4de1fe2aaf007eb9265d6afe2e4bfda7e008ebb25c74ead81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d65aa8dfc1a39105bbc5fd6a2773014a4cb678a934d04f2c53a4473a6412fc88"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
