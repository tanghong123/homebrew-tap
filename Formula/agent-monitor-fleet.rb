class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.156.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b3ef15ae9b7355e08a69835f31a516103771c33539367390e12e30dcbca9d5b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "70d93e08bc519e3bb1072a00cf5c63b77c52325d657eb1523fa4bd382dbe3287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "298926e5da9aaadede33e073f8cf69258ebf838ee53705f8ad9a8d2999008eb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36c1948594787a933108961f1c0460bce0313900ad1774c31a59313173b83d15"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
