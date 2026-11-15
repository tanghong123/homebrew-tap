class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.524.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "430c927e298f06be84094d0b68136a49321e2e2ed12082ed93b6c78b64ecf528"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7e4962fdd0e7372a39a80ff09b64bcd25eb9f7d52107befa8f0dc94716dbead5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d959e880a9217cef3744d6658b2ef69c41f5e690e0b9771e486fa1559bf801bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64f7a64647d5655bcb4527b0bef9e397ea2042f5b1478e0a58f168486571ba8f"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
