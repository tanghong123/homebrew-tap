class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.485.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "948d4b76faa8c21ed15c01f03ccdc6f10443ec9d1413e887640a1a259148708e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fed0e7c6b0afefbb59df3e965b3198b672e63572f4a065b2ada69cd423b8a07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf6d39b2eeb720b2b83ba9d341cd875427250ff63c2f973eab83540b9c5a49c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20064d8bf6ae1dc13c585d0eb36521972c3e5109d188c9eebb8e5a6e27a5e356"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
