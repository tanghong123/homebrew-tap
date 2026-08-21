class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "185175f64ac3bcdf9bd4d866ef3164d213263796db637a4947378c039083f717"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1c6eb533193cdf04f53f7a5dd72246d6c88af6d1a09cc4777ef9ea018f6058f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8b870f7fe50b7d597cbd348b8e3b0f0e487f265bc2b0813ed79534aefd8045d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dea264fe3bd49d7e6e02df0b4eeb929890ffaeafd70a6d90b9bdae844b49c9a8"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
