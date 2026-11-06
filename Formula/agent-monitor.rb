class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.481.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "427e0336856a9c58358d4ae42e109677cd06e87c3b934b55b2a6d9caa50bdaf9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6d9c25a5816333b621e6d8e075e7a176d84fa7fc8597e84b49a4ec98046ab33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "929a74364b1d87f30a0e32740c5e75cc6e711c6ed8505c2a7cf5ca38b27456cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f4d41607ed05d44eeba7ad9863afb4c67c0e80350a3422d02ec797d2c6718d1"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
