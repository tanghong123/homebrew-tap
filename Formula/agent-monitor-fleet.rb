class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.561.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "209dc77088adc2fc38f3feda2f031c4f1c8ca3bcdf21b587cb78732a8fa5680a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b7c433994a0dabd5d2a7c25704ea0261c839bd9048c94e49af0ab239ca34bbb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "467795ba34ff38262ae1d4b05fcc67017f64fbe1c1ea041907a03aa395f0e6ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.561.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f49706a90c59a78052d3719e8a944d2025aae9f7c4af88a350627ee4ee9384bb"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
