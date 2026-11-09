class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.498.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5bc87064568af3078720f18e3d1fc76aa53d3f0f5eedc3e7ddb23d532f7e703e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "58aa0bb188e9964cfda4567a336befd20933cd64340ffcedb5df45c5f9b52650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9118be676130b0521d51037779d298423293f0d4416402bff6b99763129362a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68cd792a7908b8dd3279d07c311f79eebce27a144d53c229ba197f1bf6e21822"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
