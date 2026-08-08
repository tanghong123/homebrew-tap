class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d880f7876d11731843de10f5c2bc4270936ff28be68ca86871c8b73f46a3ee5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f15c55792c469e984e9236d8892152e6cc87bd2098acec99d014502f303e43c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55a0a6456ccd95ae1a4d7062ca25634ee24b3465853248c2b906b4f972e25c6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad550d3ee75dddb47ef38a20bbe6762126dd6fd47ca60ab3b9c798a0f303164d"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
