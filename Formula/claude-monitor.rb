class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.80.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e70e5abd4186eb545d78fd947d25c2f7785bcd2e824d943b8e024d97821b1bb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0bd855de64b4cfc727cb1521eefc6efbdfedd7cb30825a6b85794e040f6ace3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a5791b0c98c998d90c7d466d69a8d0014a391ce3b1ed6a4b419f23ebaae5978"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "862d5015127875d3e60351652dd31deb16cf2043037b9d6ca49346c029d45500"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
