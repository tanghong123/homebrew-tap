class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.541.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e61d7ada3f025f65ee7060cc8b2cdbea3beb4698c8c7f4522c33fff718baec47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cf82a19db9f100a26b707a08fcc7f7567dafc946ed9f9d0a30d4365d9e61f0c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "982a73372ff31605908ae0c07e3da398d0e90149293e773af443289158e9ba67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb068b2b0842d149c40e04a0998cc98cc25be35839d714743e6fab5688b72364"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
