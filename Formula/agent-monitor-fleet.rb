class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.526.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "55359b35adcbc8586ea46fe29b9f521c6578428ebcc43551df4d20435299ca2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9c2a03bd2a364cac0c3636e5029f7952be75f0a4db71fae88b085e2ce3d768c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b144b3bba460e74ec5b93aedb5dfdd9829ca7a58bb045c36aaf738c4768c4497"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bedf3671dc1a52d0501a4b490bba3be6f788f3261cc09783989a2eca9262567"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
