class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "28106830b524c3cbf8217f197705e5a47872f37e65253ef307d617ca70dd2ee7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bb33aabce639264b5e70a790166a08c9fb01acfff6273006a3f189d32f416b96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ddffe559504c81f9e884314e95b34289e2bee06ef81533102741d227ae997742"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb55740f811774eda6ba7dcac510f0e6a2086edc9e3150b98d2f287607fac1a8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
