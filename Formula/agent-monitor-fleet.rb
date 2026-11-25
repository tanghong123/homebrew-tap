class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.562.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1e75d4ae98d6e7f51a19b2291801017ddcbb42ed43a7728657bd4c460415fd65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "babf660bcbae2b21d4d3cdc5cbee0ed4c35c1caa690c3460073b0d8d394d4c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61b116f0fc9e09c36cc246fc5ff77d3d24d38351e2e1a777518ae743025e9ab7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce2408dd6d65e0f20a2bc4753eb6c5726a368d7e669c1b770627cf241e172ea9"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
