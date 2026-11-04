class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.469.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cb3e7ccdc66a82118456f3e179dcbe59f1a45ebebc991efe7ab1caf54b50d15b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7712e4a265ea2e1b1d08efa7f65b43069ecb712c1a35a8023e8da71b727cb920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48899b36c5255be176c4d546262bfa9f3804e3cdde37119c9a75a3e07a42abf9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4090162b0c0949679bab14d12343586ac7484cc266f4737e1224344c461b1c93"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
