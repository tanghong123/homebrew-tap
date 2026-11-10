class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.506.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2ce50feef84e9c6e141bb135d53b902268c1868c6fc7d0f7b94e6f1613e3bc3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d4fa68fe5dae8c8b3fa4092d7854033703d02f0b66affc7df2a9de2cd729b330"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "626a691070573e9b11269ce087cbd778433c10e60c9607757065ade3c2b103e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.506.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48a170a06a799c72a8eee2f91c10b95d9b94954c5c911934f6bd2ec14eba265f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
