class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.90.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d2af2713729b5b48d87d8c9026950d7d39509408ea4fcd5b17fd26a5127a14a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6f4cd619f51beb55d1afc6d917596a6f3f584299955e1801627686cab3b6a345"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5af1a72f1490c427fa8b45eb79449305bb8e27b8391d5ab36ac71c1e4608533"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96f6dc554019cdb4740a953e1a2ebaf82c83b1f81779cb8766e7c8848c9cb028"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
