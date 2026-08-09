class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2ddc2677a5e5de78a8bb69ebd73d19bc40f8ac5f680ac3d0c3f6d8b96c15b393"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8937c3f792a8b9e1b6e546036db582334193d4b65356a2ce4f74c34ade3cc291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "213269d718d4180764b148f256cf711ebd4eedd23073d97df2c896f43939de40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71c831b9407c4c9d62871da14dd33d534cb6bc21634b5639694fc01bd826db1c"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
