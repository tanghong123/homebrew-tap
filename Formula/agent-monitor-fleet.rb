class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.516.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "04ed0f1ac8735f71932288261cd1c4fed0c62b0aa048862e7541debdcb9cefd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "afdf09861f3c053981e08fdc3748d0b3b867530b728d3304d37ba7d37bc6e7b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "adf01a55f3c4dcc7869f8aaab1e21676ab52155944840ede1a5af47e18a5abe1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.516.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29b08357fac9911981129d65d8867b7e55ba3e5733313ef1814479d6a009409e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
