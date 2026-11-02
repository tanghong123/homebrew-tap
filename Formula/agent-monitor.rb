class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.461.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "18d630e9787ade39cfb364b28c28699aeb208e97853d31fd78dd4724112231ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6620835b1913da8b534e19c44a2dd3cf711b96e2fb488343fed70895de20bfcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84f83d0932fd88c8882c41e0512ef4581bbe9a43c51f9a5f9611ab703cdada6b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd239697f8b18b79106c2caf2924abada4e677ef005be84f83fac5147aa6f99e"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
