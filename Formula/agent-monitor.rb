class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.563.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "10e812f7ea4f06958b643ca2d76aad8528cc5c6b423f8eca3161faa37d312f6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "267b75d78f54eba799ccc7623e0843cb70fe4fde333ded70473b1da668b9400b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ecda4d637aea669fefaa00c9923d9a339a7e1ecbb54f3552234a9fec8507519e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4dbdaf8adc4bb48ca34d6fcf2cbe19a646f241785987965fb9e826a359347ec"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
