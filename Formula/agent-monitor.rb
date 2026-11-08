class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.491.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e869be92c4ae76449ad84d17c36da67c8523090c501b827b9e75bb1453d56f74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e8ad63cf0d9da1fef92cc17721e90960e85e415ecad03c1437e370beb1baaf76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3cef006558c535b2fdd684a8ff490ba54234a045607568002a0cad57d76d945a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3f3c9e41e4c109e086b84c73b22bd13a0884ba30cd4abc1ce28af90c6684c0c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
