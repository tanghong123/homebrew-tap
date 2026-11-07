class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.484.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "48728b3403207bfdb61a54811f733fc68b370b70756b11049a1dca86a12ad8ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7217f82096d644f35e36b9dd8c0ae9393f2786ed0b5ea9871cae20d343d118cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0436796bb54ccead57f691c2dbf1946b9f4093608e02d0197f161acc58081893"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d4b5232c9d16e390a999f9f59a02dd95ad0e4fb8d60f0c5aec258ef2014da45"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
