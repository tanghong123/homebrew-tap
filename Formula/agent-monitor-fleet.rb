class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.458.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d8ac1e8aacf3ac736fc46e9cfe559d65646356f7fc86dd48a3b3eeca1f1a6761"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9c65f71f47d910e14ccc8560408a9fe94c56c600fa6964318d5f89b566a82efc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7ea97c7b5ce73b755b6ec677aa11150d1047511e893e14bda111ec4b8789b5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3bf2a46d261c58aa46b684e08edde98aaf8551324827666300fd7429dd9a72e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
