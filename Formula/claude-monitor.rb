class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a499d37e26a194323c798d36a8e5571be7b42a0d27b79c03b7881c8ccf2978b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6186fe29d59ebe2446d115c9f851ff28f6b279ba79326e1d767397e39abd7cb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e057d121495bf3a3e95e66392ef9977bfd486be9d1684350e2c7e1db1b0a456"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc022f16d6f33231a2c8804ccb72cf03434e736ec6f7ecef32d5204280bc5fba"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
