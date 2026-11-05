class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.475.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "18d2aa22fc14eefe9d29fefa3637335fa1e86ebab93c5861173b2636f736f60c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "79f56a2d1759d3a07319e98ae99194387d48dc0951cb5911f0cd229a27e9a9f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff63686059dfcb4f07b4ef5a34276ce77735dffc51c98e74955bde3cb5bbb3eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5d2c5947c0629c31cb710a2141646a0ac1f81d9207e778ca97a08b4be498569"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
