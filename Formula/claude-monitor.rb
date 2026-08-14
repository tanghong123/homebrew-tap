class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7220576ee50b179feb11d6c26beeb628716016a17d4b96a3897782c6e6d132c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b9e59ed97adbca5f3d378290c003fa063aac5d0656c9c2f900037feb58948f1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3bc31e4069797522e11fc55d64639bbe349a79baca85ccf424385fb86f61a67b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3178aef56c4f0bc39754ddf2504e3cbb9709ad1955fb50ba28dd2c98b14fedf8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
