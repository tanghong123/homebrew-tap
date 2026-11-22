class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.551.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d274011ede23cc2b3739b2ebe471d7161eb7b9049adee61c2292ff9817ce31f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "42ef215d8efe648927b79ee6e228b11c4e28c55fa39d484c97ce15a9c28b9c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "806e2de5618741e4363641abf8b987500958cd40098857849b292ecb02f1df2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.551.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "791e5847a4c9ca40b13d85068303fda019799a6e8f52250cf031d4621d7926fe"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
