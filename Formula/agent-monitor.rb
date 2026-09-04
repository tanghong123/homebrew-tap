class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.154.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1a3d08873bea9f6ad4c732d1ae84b12ec4a491d8a559483e1497a314d45e7371"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4c8ed97efb3defd800619ecf38435b192dca17ed80678c247aa58f7f0dafba2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "040514f377902bfd7a8ee6f118ba1b8b9fedceae4388f7759c15301fcf2d99b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88a2e0275356098056b75de0cd7d356a3bbddefdffca508d1e28cb772441bf6d"
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
