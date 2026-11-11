class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.511.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0fcb0bf2d800cd1587cb6a38ed2910fe597550a6fdffa91be78d0a51405fb826"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "924abb39514e417b86cc18ce278776615893261cd06b29db39f598444790b0b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98b030755393e754911b916947820f586a592733e1120ae113d16583842f5860"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d11ab2c1f3612e39cb0236d7f8fbf51c07abbe37e21d043d3de9e599882e92c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
