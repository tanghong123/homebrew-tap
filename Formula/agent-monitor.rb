class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.495.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a54865f00d8efd000e1fe49ebdc2a4d01a466eca78a9ad9806b11098700e0c54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0168ee4078810daf3a2c840d43b8a87ba53e56cd97278152828e23f953c733b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "697bb37979f3a6054d90c6bef465fee94aff93adf3ea0c58841ae7746cd64df8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "744a7348001e74ff994014a64897196afb18b3e293ad1f11790cde427d910e89"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
