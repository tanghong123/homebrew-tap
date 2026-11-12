class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.514.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0a06a8cf0071a1f4ea2cba6b159b620a09762c395eb958ac5f1a9e526a29924d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e5a79f55753e209e2b810c4e158cb56db9d9f5a2a365cd1a21d325ded9425ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc6b9973d12c9af1e628772e319f9b23e9106cf1d85475002368d8cbde5db500"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8851dd4e74733c359364c286f92fcc7de31c6561ddacb18a01831479493acda"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
