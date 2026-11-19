class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.539.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ec15827aeb8a9dfaa009e559e67e3be28dc3e9e5af6f3b02f251bb1359355f81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "eba937ccc41c25ab478affd9d86467791683b96f2116b59dd13de6e947f0d992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ac17240d5379025ad7ab885af59f33c0f828ac055d10e01f8f28e14b5797150d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f84ce5f2dfec63d680754e950a986049feec2084341c2ccc5fae2db6fbc0eea"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
