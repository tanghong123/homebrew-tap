class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.492.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5f13a1ab347bc3154e2f3b4bbef2c89cda45cc18a20269236dee07507d9a8d7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "97dab2fed14a08bc9d4a2c7b77d4ff79b3f7995ca14d6da8931ca75b6e84c1bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe4a8627e5cd31c192aaf755b187258a5fe72882388e98b90737d0767e418b8d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "358bfb147db1704bd02d6b3586f91a42b0dcf869de2c17ea08a534237ea12e85"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
