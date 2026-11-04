class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.468.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "172fec76b387057c03fc6b411cfc359ac953dc4d1ac5ac6aafb5d706562e33b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "58b3c8add5751186fb32a6ebe04dd37866bfe049c55861acc177c5c7714a7532"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca5e4481ce874296010f385d45144a3b1a68076039d83e342a95614268261db5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d9d7a79c7d8b53d332c05c38d94684b51bcedbe6694dbda46b66abe296f05de"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
