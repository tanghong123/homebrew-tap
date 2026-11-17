class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.530.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e62bd21eb3a3ee6a6379c56ed3c0a1009796425ad062041e096a624205325adb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5ee556e5102d111000d3cf7d48c611b0dfb5dbc3081f14f99be12e5d29a7a7b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e51cd6ffef06ef1ae7df47c26cad5d3979ef6a7855d8f645b1b4e93169600a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fb43341ddd87636ff2a0975b17fb81428c73cf09bc7ee6a1d39a5c5ee09fb8e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
