class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "767287f56df2da1dfe5d7f9d646c7c4951b31eb4d690652848ed6f4904cb90bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa942fdc3f2cd76bdd3af23682cce150ba132c5a72f20a03de3703461c9f1253"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa93b57719e10666f3bfb83a1e881996e537c4e447cfc0dc9c0ff11d027a4f73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c510a625cf5c5ccc4e1c0bc51e9e2c4895ce210b3b5db2db6f4301627d21f7bc"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
