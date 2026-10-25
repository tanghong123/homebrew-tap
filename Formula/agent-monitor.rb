class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.420.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b5a93bc2eb7f74a1b4eb0a9637d06d349746808697b4bd3f06d06bb0a9382479"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "aade6d088478fc345e0b407c9b498a713dd5fe5473f3b5d8b29710b1d7769310"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "491e1c1c1b4eeed6ebe43a202ea53444a40abd6b5ed792af88324bf2f8c58294"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8912734e4434a7724b50f06327ffbeb499ee3e957cd0bb2cd9bccc69c27a767a"
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
