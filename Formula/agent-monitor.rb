class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.238.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3d6d31d00b6371800d1ad2a8ea5e0edb5557ba40b24a4ae420ff37545bd5cfb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "24dbd12d9c194395d8f77380d13a0f2f7f0b3f316dcc7706a2d73c9872161b0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ff41bb0589e818c28a30f0c1405ceb17e4a8494f6f83f6f80cc7a94372fb3af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.238.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06c24c9e858cfe48f163e77f377aa5087dab92f8bde64b6937efa65a9ea48f59"
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
