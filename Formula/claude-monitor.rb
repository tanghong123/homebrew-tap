class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.89.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7afe2e45e6e8f54198c04f9170b8a24708789f5f8e2c18e43cd146e82666b771"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fdaaaca2c1bbfb2898146c498ddef128d9971367d5d4f7319b4aeef4dc73b124"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d297b16c9cd5bb0788c90556f7a571ef893e54e9b8cf9a9dacdb8bd5ca1b72c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "241fa429bac6b7b25e03c1512295edc317bac5f58e70098c3128bc0dd70550b3"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
