class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.474.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4dadcba025246d20d2b4a7f6cd9c4224cc0b038c3695c9649d82fe47436228d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7d25f24e21c1350b3a7be2330bb76fde4dac822fe2f21eef2a65352cad4bc845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "838756d0fd2aed378fa7b8bca1da6f77043521f308b3403c58c37b3e639ddcb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.474.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "003594aaa6376d26c9e3be805831d687cc04e8534ecb561d6c8ecd9d90ce46cc"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
