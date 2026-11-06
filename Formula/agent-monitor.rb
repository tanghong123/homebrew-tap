class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.483.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6b6d75efbd97e5ab41e7ee5407ef1760f3d31fd1e562bdf492aed686b2a0d10b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "72cd143e5a39e1e56010c98173ef8a3577998bbb2874091697d82f9182bebfe9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe9def34c9789889ec59003e620b1231227a25856ba4f2dc84cb023c4017ceda"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fccb08382266dd1dabe832f8706d9b8e74f21d8fc0cceaaeba68f0344ee79fb"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
