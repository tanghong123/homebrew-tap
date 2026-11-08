class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.494.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b04c030e1677990f281d2128ed84da1f65fac24fe7bb9e3baa3334f6fcd4277a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9fed350dd1f66078f5ed5fb9e41fa6e9fe0edc837ab4248676b6b0dc1500981f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ff36eef7d76184559b86fede1890c2362067cda56a06039e585ac07f30e834d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e79afcf40663a07e7895739c843ccc792e647425963938e260b81ae4951f412"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
