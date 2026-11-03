class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.463.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "08c26503c23bf1fb719ea15e2d235b5667178750ce8e923548c60d3633072b1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fa28c41cd0b85d851b026c5f9de05c1f18cb4dfd2f865c3ebe9ba2c2736a0afe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a10e369c56582f124fd8091d7ff183492064f5e2ce7c7a9af3b8d943f8523dfc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.463.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84f8e042e73a10cb36020bb6ed46d0c51c23a942bd9975f16a244e8efa3ec108"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
