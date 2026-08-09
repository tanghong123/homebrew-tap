class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a02c464321b94aafd8a1f6e11f75ec9a0712e12922685287db146a43540e7fea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a43d6d47c371926581437da886a41c53b76ec9f546bfa830f13bfda6bbf8fa37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d09cf6a23c30cd3e4fd7aae2d521996d34959ef3b3e238fcd67f7d317e426111"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02a2048d4c7ea2fd6824b5370eb134b4ed29cc13da780b8ce494319fe4148e46"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
