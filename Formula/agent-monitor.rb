class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.479.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1785513454dfe0d1c31d63826c1dae8e11a04053021591f851f78f13f5ec2441"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7384cde45a240ef0844b0229f20055ab66d45a1214f67396cb6f0282efd2ac39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc457962b7a752883a69251ac0e1823266b967942e8f90d7333646a5d99d076d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28ea09bb275704554964b5679761ff99882edbdf1626cc2ad4df292fed0d0e24"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
