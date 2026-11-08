class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.491.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7e17e3f80f416100d8a78415d89c100a92c1cdc0ea0aa6a4c823eb7bb30f9e47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d8f229cf3212741b6e4f838589cd446a846277ccb97dcb184cd90c4732c0c0d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c400b20ff8b111d14470af4ee4f6e25c201a2ac25f9f533033d100175bb52216"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.491.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2707a8e51fe2d84ba5cf90faead1b8f3ff92823dbbd25ffce3be389511464701"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
