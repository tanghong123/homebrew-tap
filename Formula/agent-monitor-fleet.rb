class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.507.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a9fad160f25ea45b07ab2ecff8746c86855316e505303f2e5ffca0bb58934cb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fd96770706e7db088514c315ffddacaf81b0224334b97a0f88aed2367b89e606"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d12e41b88ff235ba74f80d6d13f531cdcc4aefa2756777d34d3d16c1d1475135"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb0f27f49f01b05c52ce966f102367a7a6d3b51b539bef7907ec58b713ee7eda"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
