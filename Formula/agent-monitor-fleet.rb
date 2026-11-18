class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.535.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "22cbf13805cda579057d9c1b90fe71e8efea7733c8b46bd78042facc429bb58a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "617d811575fc10dc56911e2ceea67c8095f1908888ea294d7d11b9af9a6e013a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "12e90df97ccd22b5ec3ff98a3b220eda073dc67cdf4ca052eb99421f74dc5082"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.535.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c8432a47905ea48d91b06d1bdbbaf0df5938596c4d6f5a0fe499caf6dfbedaf"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
