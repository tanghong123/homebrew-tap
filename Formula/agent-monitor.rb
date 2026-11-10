class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.503.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5b7fa327c9b3cac0bdff7c481bbae65024778051269bd22085d2388cb475d959"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d4776981c59b34d5692be19acd53649f24b524852c9f4d334646982a204cd8ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e96a523635e220902d2496c1d031a4d32f4063c1549b94ec8fc499f5b3c9f5f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6865ce1c488edccb91d7e2ea5b296dd4ed3e2a693fa3d77e35993fcf87441fa3"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
