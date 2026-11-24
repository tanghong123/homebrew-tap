class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.559.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bc49119effdf8e1150447bd324e0bf90e2831f4f2351e320ef90f5cd80c6fd5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4f61d620b920773faac63695d6177f9804c8191adb99f1d698d41f2046417067"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "545313b8b1c1e0ce5b855eb4d4fffc824f0eccb99dd96a5da52899a897619927"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f2e5f6fe3c35e720a70953aec429687524d9dc317ba42587a3f02bdf0f3187a"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
