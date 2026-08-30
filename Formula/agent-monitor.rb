class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.117.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "543e07db1a7cd15d8a2cd85147b8fbbd2a5bea72cf2a60a3c2c8333d9ceef639"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7e6c2b01115e70f14546ce18e66d5fb30627337dca6aeb4b3f3f9b69276ddeb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1847479b2a36efa0c2b9f9de353c9eea74c8e9aaf7d185d43eca2284ed12bb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.117.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd7bc538efa72d138135ecfb93505c75f0744c949ae6b3cedf0bbc26b2f05bc8"
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
