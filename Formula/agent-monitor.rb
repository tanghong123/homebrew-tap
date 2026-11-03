class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.464.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cb66eccffcf28885bf1fda6263cbdd62e438390aad70e09d54eadea35f5e3c63"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3deff784351e3d20f9b02f19d87989c4dad309bd7914ec853d2da4f84fe12929"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d4171f1908be06133e4b63ea46fec2b9eff773d0b12900f5ec0878bbe83124f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ae8b90fad358982a1889e0117237cf9cc0d35f99785c47dd7f9c3d9d2d197ce"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
