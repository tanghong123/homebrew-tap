class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.479.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1e5729d954d34f1d9b4f628e71815be466e2f7a5be45cd0faf71e0ebf4b4d4d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c1987ca7f36d37e1226d7bbebe1e0a59191aa6f46fe77ff6f5d34946471ae5f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23ccb33b912f6b97ae1538a9d791a13f52da53c9d5b2a127286221fca233d86a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25240c25c5d9f5f1a1bd4a59df28001c2587365c96a1f51546b7a521e85e9986"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
