class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.252.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d3269156c3fe3bfcebc136a24b1448cafe6f29c6213b515d8fd5f800144cabe0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2b1a31a0d3188545accd17b30b279b0692399dbc089092f12073eed5e85b7daa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "588294c7eca2c0e1f42e2fe7032352aa7d228cf56c8675663034c3afc42e30c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "058d99d67bc104e65b0f621b73758c89664e2369a25dadf078dab4a8d429448a"
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
