class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0f37877c4b4c970a7d7fbf841e9ebd867beab0f178f965a6015216a0e1f86130"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0806cce8cb34f8f5d42a43100d0e17348957e31b3ae3741ef88aeef964a31f32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7ff47e8c4f27708b10de3047e25c049522171e9406dcbb4d8ad48f80ae5de54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dff44c2a7fcabe861995a3edc63a1c8da7c41d126356aa98d9daac4bc2dc5610"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
