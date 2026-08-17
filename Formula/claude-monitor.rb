class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2418f27e7ed12ca5c09ac9c15dbc5e68b725f6b5f03bda8506613d63448cec9a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "93ebebd6f2008e4214e36e49efd57ea143ec6afe102daacd4e210290c85c6406"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e5f75de19759eafc974aa08f920548b4da624ad3bac1f7b4c166af4bc6e53ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38b06625189b8b1ef30e2300f68c9f14f8eb66f0572754814e17c1314651d988"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
