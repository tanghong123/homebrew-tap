class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.128.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c50e6fae69c37e5dc57509a4c2b59cc0962c786f7becf10b7ff2b9176117ff08"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a068a1b2c106af8ff0c6f7f4158a72b1299877171280578530fe40edaed4549c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d2c6034c8bdbcad19b22d0005fce1cac728ba4a785a0a0fddfb551baa968666"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.128.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9c41705657654b77381e4b357ac925069a0aa309ef4cb6edea6fc272081222d"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
