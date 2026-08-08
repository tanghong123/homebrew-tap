class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "67cfef6ed3d41e1a37266b53e7ac967474b15402d453a763c5c2bfeeb5c3cb8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "945a3b9b0e0868e91412e6bec5c9eb3723e5ec63c684deb6f720456e969867c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "074f2d6caf0c5ecbe834695156680355fe07d4f7d6c100457c7cad18db02f13b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "789508cadfc9315db40f251631606fc3770ba289652ebb5f81875424afff74ef"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
