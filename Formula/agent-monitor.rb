class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.490.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "93d5575b97a0196182fcb7ce9d81c157a80fd4acece03ecb39e0fcd40360003b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9e26645afd450c447fdbb27c9f8f62ca5a9f8d960690a7d051ff7bc23900eb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7a8eda03448a39f14a61b9aa89a9364a5a39cfd25f11aadd7197bd8462a3ce0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e92d67c3abea26c5f2ecdf1a9ce5871eb68c70322e1d78a40e1955e0add4d65c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
