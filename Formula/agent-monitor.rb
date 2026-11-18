class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.532.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "da674d2be15d799cfdc8f68261d893bda645c36e172039037125c403b7851dc4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "80df4d86498c2970783c24165feaa81cb01eabcd7b1df0bc3f4402aa98b035ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5601f9c39077caa0fbb15310f1f878776b11fb9045eda0209891cc0aa61cd6be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61a9d0eb1ef1c7b8a33329cf7f1ad3c1c50884d0254b7dd520114a4ebf7ea479"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
