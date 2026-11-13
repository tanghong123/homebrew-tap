class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.516.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7fb254a1e241a93bb687ce64f07731d19fc9ec3ce1328c96249519aa3067f93b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "16483f457953142d5c6af458e6b0a143aa0cae846ddd301c6202b2e6e1350947"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54148a3f120f181727290c98a2a1836534a46bc2267e219064239f79b8db5979"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "37138e13e0eb5e216b900b2f9462671fb529890a144dab4343888dc0293eacdb"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
