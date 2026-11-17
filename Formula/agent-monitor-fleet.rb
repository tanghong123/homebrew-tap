class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.529.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "95f306537d6c660b5a448297e5da526aae36a65e10b39b9a9a38f834fd164830"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6f8ec46aabb822aed580f63d06fac5989308447952f2bccbad377f18cfc55e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da46c3e94f97326cc27f43c62e2dc2879555d15047bcc4f263df1daddf932579"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d501ee1969e2bffd42c8c86cf0f9abbfd6390a972179e634610d21d22b5cf5cb"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
