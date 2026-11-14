class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.521.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cd656f6e4a8ce9cd37f487c34f4c792a0b8da911012a04fabf1007e448e0cbc7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7cbe02dffa0e6f7349f3a75186daac3bbcd42b176815fb93c03910bbfb13d7b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6f01efa8346d11435dc46003b22332bf149ea059d53119a6aaff099fd8c6a72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.521.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a99122b622f320000eb1150de7eee9841f5e04807c2a4264f5ffb48296fc4119"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
