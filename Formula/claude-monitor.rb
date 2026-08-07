class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c844f91ec5f26791b51446459d491f527128f31b2a15fcf5adfc12791a71d500"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bdbad5ac0083e464938ff29b6ecfd016399e7d8bdb88a809033f1a43536d8122"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3b241b0d6ad4650917cca2087f3f21ca6d04c1476f99917ac312e14e14be5cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1313e970aab5ff2b4ab4189fdd30d943b7edbcd34d3bf8d9fb91e7aa274522c1"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
