class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0f04856a4cb7826257213a681c75fc9b44352cb0f57c2f09a8fc9524a8ee7c53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ac89e4aed2918b3ad6444c13289e621a1522bd831f9fac3b392861bcbdf108d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c06a1a848751328b4683eb92b0df3a1a3ae2c7c61ce60356512211827f17f9cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e13dc85444e52ba6ed5d16f6a0be2de5d582054f84c1fa4f7ad283dadcba4513"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
