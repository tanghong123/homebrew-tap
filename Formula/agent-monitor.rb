class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.138.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eae1db14562948d84e8379dbc51277584c015f33042c31949fe115fa9bdf3945"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8e1a73dc468e9654362ad783a5d19bf896b1859655dd48348eaa53099fc917fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3afa4ae6fe02aa1d24adeb98b8c6a753ca34417e8435151560a20914d2345f5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50dfb6b5ed397422c2e5ed00cb42130176ec96d5db477ed806a3ecafba04b1d5"
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
