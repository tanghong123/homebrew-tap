class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.526.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "30b23c61eaf640a447a07b6592e45f2b1483c71cd6c5c437ae9e5d4878cd96f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c356ceea794602fcd51118d433f94e31652eec0d9064dd79c934e694bb737793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c60853b476b9e34f9da3c2e99d8d3e826836a5fd03c3f2c7503c52d85f4873f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3efd9b15e6dd546a2dc146c0ebca485c6dc8e811017f0500cfa73dfd176b0831"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
