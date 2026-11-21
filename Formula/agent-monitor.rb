class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.547.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e8db736e80c9ad9e4bff3fe41509e7dec2decac3d0af943713dcd4b5c90fc3fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "299b35c4e1ad6e485cc49a4e99b114d07a1106967ef4ffa0e6512ec20740c760"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72d3ead11cecbea1ffb25d2e28c2ecc786b02ac24c11056773d9181ac2968bea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44428625ba5ce38360db56d33dddd78abf5e1108d248272973bd3c681e61d58c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
