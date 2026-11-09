class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.497.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5360b78522ae62cd4030604deb980e73b81e8f42d7ae508e1c9726db7c2c5ddc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d0b07f76c0c6b8c74f200afacfce966808a8198dfb41d39c312a28c1f5ded25c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91bc9147f94830aae4efd9fd6509b88be95b935624962fd28da1f945cdde5ab1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.497.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68f429c91770fb07303e0e21dfb6f260944c74ce944cf6a503acd06207ffb20c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
