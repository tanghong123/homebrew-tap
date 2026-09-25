class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.300.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4ea1025514b98bd1b6ee82d34c2e555dae911248cf6127b6cda5453f4b1b4229"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0fd00854c63dd345224dcdba966d103275ccc92f6e520b3e437b4da0f7f24736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf8bc2d7cfb665e57afba3816a1d64a2e54c6c78f3a30cac119943240aabb643"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "698cb81f1d15caaaa8effef933e9b5fe2d7f05b184e73b4b2f01ed91ae206779"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
