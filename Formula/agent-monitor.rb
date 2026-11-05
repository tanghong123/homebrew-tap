class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.472.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "96b2d9e61e1c852069421dfc7442484b96631049529f5debf99b3a6585aa9264"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f0303751d3cb051c8361e6adc2159f770807feeb5aaebc56a446f21cdca74e52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "78bfe5bb55714135102c33b7303c07911e17cc32ed83f93cf384c06b40240ced"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e88aee06c48c09f8b38c967257f971b113a924bb8642d38a7b46dd6e550ae4c5"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
