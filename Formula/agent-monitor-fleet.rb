class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.579.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3965f7a710ce46210d02a6ae04253314ed4138670762409c99ec488503888e2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b5a2d977449963c191d6036e3edf657849377bffbccbf5e2a3ee4bce805bed35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "060ab640edd78dd1cf30ca6c8f1774fd03c63707fb0b5d939083d1d7cc8e5529"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.579.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63f0ed926b80a742228e9e890e0b460f597bcb9c64ceeb8c24edf3e34d873124"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
