class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.480.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "906962a22ba02e448ebccfd00a90e4f05e171a30ddb249bc00e1f3e2f84377cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8d4f965f6ba3698ca04c93924cc8749be333a283e2fef962e7be4b0221ce1900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e40ac065f5499f069fd03a0fd116f1bf84476f89499aa4b380dd50873f1e7251"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39f4acc29aa031b3a08b1698558bfeaeaa01e1e1544eb19716242046b80e7e4d"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
