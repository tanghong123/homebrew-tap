class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.555.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "00ac060be0615e3dd652a814bc2971a469fd4f32abaf1f49c4f3a0f79f2f7e7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6fe087ae0edc880318ba60f3191413d83eacfce2bd076c930b3c97b5ceb3311d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84d8e70edee6814d79b7085735b5668b648c4d92947f93bfb27d0a55a762c5c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b5791e9f01e0c10236eeae66191d74304b7db715fa73f477c5d1f95212da01f"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
