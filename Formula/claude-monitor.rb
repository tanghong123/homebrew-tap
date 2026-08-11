class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7a41a8587d60c0bc2e19b21f36d017dec6594d816ede6eafafec00fe71f890f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ee498d2c8bde299e3765d52a9039d94017939e2b79828090f7ad75cab51ed150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e776b1873f2652d60ffe76f18ab098a600a673849c25335cc425c0fd2c3a34ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b154856b78cffb95ad07ee2237d564ae7c5d914d2d0e3f059477298c31eb386"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
