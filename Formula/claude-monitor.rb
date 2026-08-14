class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.75.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "18c94e73295f4e44aad4b8dcb15ec37569801cfec147f075aea605e593f5f12d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "894e2e2046c6ba7ee6f322110acc7c3c286d0ccbd4f693ce7a070a3ba60a81f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fc0d5132c4e09d0784bb46b4452bcb328b7c6d6955f0434a281ddf9574b776f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ffa620de564b217c1bd4a9c088a737ddc9e7627c9fc3cf06b007cab48e713575"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
