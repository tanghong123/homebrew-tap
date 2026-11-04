class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.467.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "db9ad2100aa7cd81a2cec945a0c774fbcc04b0482080b7ab61ea3728627ab4ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c545c4792ae872dfce1519d714a51ee8fff6cf65a15636950720019cedcb55a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b20c5416922cad87032f51b9d95dc89a9fb53ee6b98b269cc9c11fee0093af5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ab258e8d5324957b75fdbad0703953cee521992b035b54a29bdba09c2f43072"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
