class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.542.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "dbfd2d003110b07212308e7aa8af055b1ad9035e7a46e2d2f96d8ddce683921d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f1708cc3ae7ad59d13468859c5c10f7f94627fa33b9dede5097f0f2cb000cf03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c458c8a2d655334cafa9b47fd229b4ad273bf8829d38dd46694a64a962b0bcbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "792225be48a2f7865ca2f222dea82e0112f0d868a6182eb37bad5be9b25861db"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
