class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.552.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1640db5e75e2b4e43ebf56689527d1eae3dd8b6eb31f82bc15f5cfd31459ca4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3dbff96357dff035445c1839ca66dd3616fa669ddfe3777a39033e992902a36e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0d0449095a7902778730dc0d51855c8d6188fdc42105ea784fe86cdefb8b9ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00206c2b7508ec666cd22e19d37b89de800387018c9a19c2ea2887895c5bd7a8"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
