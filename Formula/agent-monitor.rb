class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.553.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "388287d2b43d3a0e2b9b289bbde741ccd64d3354003a87a8dd2e027facbd9129"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "38cb5731bc2ef63ab4dfbcc89467afeb0bde8db818e1b94c79082716d94ab04f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "419725c19b4c24659ad2bc3673e136ea8dd10147280a2f57a619f3bbc9043c47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd8db4b850ca89822e0f59e776ab9eb50e6fb149e2e878eb8200d1e9888a4361"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
