class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.568.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1b16d6d54e49c80bdff7d69a19317d9112cea58e0fe81196e34ee932315b48ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "901643a36eeb15d8396eacb9933e2d198dfbebe3cba564278a88bb5cd633f2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "267117fd4fb2871cb736e7c56cbf9deea702d95c95d79003fec59dba98e71c25"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2e2324ad094951411a56a45222149f7c2f4018ee331967f26b1910d99ff3e4c3"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
