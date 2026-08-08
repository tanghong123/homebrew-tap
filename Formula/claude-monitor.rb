class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f905bf84d586b0ee01dd2bbf98bafd4f9ecc145976f7587735792c30967b0960"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4abb4ed7f3b1fe7d2a7de9fb42752544f41490d412c51637b36cddccf9c8fc61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3614ec15e58befc0e4f4f2eb96c130e04e355b4d1dfc11eae9275235a14150ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d91cd34868b8841f52c29ad836cbe4afb2b3e56686d2d4a99b56c01c8bc4f6c5"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
