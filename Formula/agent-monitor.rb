class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.244.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "319dc5713a2f0f1432ff76bc32251b22b91d3029343fddcc242ceb78d36f17a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d70cfa0cc448010d7bbf7cf3cbfaff8573223effc5be85106b846776156afffb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54f64156b92338399a0dbda6c30291b1d55e4b9cf926b92dfc8498c28d58b243"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3af7d5cda3e182f40f15b46f0707cee5080704175fe161d06cff38a7f33b2e48"
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
