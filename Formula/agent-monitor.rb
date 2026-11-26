class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.570.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "33526744cdfdda0463433f5aa2ae5be861a14c5e4832cdbead36d8d9887b6e6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "83c86822c1e43263791e7dd336695852c1b81e3c975e7f0ae448d4c118e4b295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e48ae895296d943729e4f8919a87012c0d73067057199c97535909ea670667c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "447c75944ceb46e81ce8bfd66284dfcc56139fd1253c5340dfaf7b19d7d2b383"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
