class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.481.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0a975cc02573d2c5dbb147deef5871069e9c913738d1002695cb16925cc137fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "143470af1b8130b35299d70eb86e76be59a292bec2887a8e25c837692b09291c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "483f176cfd71f3f2a1edeb0d657ccc139d6ecf1335b3ebb1b9df59cf03ea883b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bdc81c18b0bd8bbc810c36ea0ecef4cae2aeaf8b6d716f1407249c32c5ebef0"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
