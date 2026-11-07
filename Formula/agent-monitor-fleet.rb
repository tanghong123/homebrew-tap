class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.486.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8e1c3aae48bd8c57451c06f90df81676144de82c4c8e72a2ce7e4edeb0ef159d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9f85c3c1fa1a6b7536b874ee4a58c939499eec112ea8120d0dbcc6c81d0ba1d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8351ccd3188dc4b2f09d02ccdb6044a8f513a80ea798deff58b5386a9b5ccb55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb68410d076be89420c0fbe8446e53abab90690c01ac7ef12b0668a2dc77b279"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
