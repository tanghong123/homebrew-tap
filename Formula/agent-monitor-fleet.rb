class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.362.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8f9a1ad4dee87ca22f64516848374b53fd20cd1f185d3bc089dd7a05b7b3b25c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4b2d966d4ae5176684ca17041e67bc0a042a4af158d05467828e7da12cd2fb2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d0aa5a09d612fb4c7253166db9112250f5ae2155e9f54ca08b6f7375d034e0b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "496f4f7ef2d6555cc0c8f901b9cbac3f6d79c0ba944f090270b6c07a932cbd42"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
