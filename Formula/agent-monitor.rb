class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.463.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3ce1f279ab17410d35a9350015fc1d6e9f044c521cf114a12a535d1eef17ebfd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5bbe2deaf03866cb9597b9ab3ed8f776af7d1bde33b3ae0eee0d15983aff92c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fac39d8f2edba64676b9480de7f1c068df9f3e39a5e6037f7f5dfc763a288171"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "707c27dcc459d6c3f20340676c0c73d8013be01fc6a3a1de8840e7cf024b3cc1"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
