class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.357.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "38c73d22049cc55eaf54751481fa7c911727c9c8cceca8bf57dfc51ee06fac69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f181b0e1ec06c761f58b8fc3c216e0cc3c063497ca55417153e0d41287182c8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c9e5d7ee2eb8cd091930f7253e90327e6982b710d4c71dc4fdf5988efb6c108"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fe95f0a61badc00ff28d11f78517fb612e8358312c42938051e7e727b9d2775"
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
