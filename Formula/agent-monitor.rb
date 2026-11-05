class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.474.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "98da1399aae75177b6aba01e741adafc34d8c5898bb778c9ccaded35d4da57a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f09eeb37860e2e822840bce53693127baa52aa3746d70a8cc6c5150869ac0335"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3d861207ebdeb85ab5277d9cf688bc3e62921be0cd2747ea580d1ebc53f0154"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a7465dec20f6b36b7c1927dba7288322061f069de387994d5c9eef59d569123"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
