class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.512.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d0680671c67bc0c675a00f6847e9f7ff8597fced5079e0d6d21449f270a98c9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "98bdbff067d110fc42c0e9b57a247b97cbbb4a4d8b118d660f9431a21e758515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80c92e367aaf7829d4bca4f8841105c83a0bf9af564666e34b60aa535d32f137"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e14d8eabf359e1c770e05a1cec759eccc9bdd611a79c3b8b81c319dea949bb5"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
