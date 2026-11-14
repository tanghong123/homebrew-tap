class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.520.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e4971f4d97b87869621ae6cc1dfbbbf031133959e73fb8c168192215c3e8ee1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c200b6ae8f3605190c8929249aca8390d6b43e8d5d570a14585279f462d16090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f9557fedc6ceacfdb67f61a52ebb9001a3cde4c66b3159c6403b2d60397e64a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3ff3903ee6f61c7e804eb3d52593089deea66cc428e6659f12ebd7d8b7a0acc"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
