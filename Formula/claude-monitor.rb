class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b113e36b741ce90fc2f378a1ae884124f693b2ee4cf35091fed3526ee46b5011"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6d555b6122e0b8f9c064e06744aa0db39cfc52a7af8c43688a5b9e433e2a79b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b64dcf61a4263e97429add6fccba289d29f2065d701c0151ca34e4aa10fccd9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87f960d8770674e39046d5b28f817028e6a7df8a2c8afffb6490bd602476fd4e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
