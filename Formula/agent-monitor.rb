class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.525.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ff18aa6c0f258660a2ba6dd5527b02c386c4c8e91ca5e5da37f5f40a6b88c4c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b629e7ae5deca6d824e6c3c7475701a963fd00e1c3b09850a0a3200b226ee56a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1c2d52893b7fec7fb69436d478be8ceec0d5bc719933863effad4de1488392b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.525.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5310e444ca57358c26900162f56b6a2e130b12d2560be7b6e47c7e4473673b7c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
