class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.476.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1954c37d4533c29028490a8e642ce7d1c6050cd80d1b0121ff3fd1ed7ec6e567"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "98b5738f2a4c07e16ca3c6b14f357dfe052763f92895d0cffca461a65438b29d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e7ed98d799a5d15129acaf32bfb2c1615440b84ceaad5df8f0a5a569e5aa1cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b780f21ad17f9214260be8be8c7d5aad2ccab5938f3d60bd0c95488669831e6c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
