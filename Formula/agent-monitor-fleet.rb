class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.578.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f481ec9afb07766003036e5777d64e81c9e93b0b901b12ed8d1908f8234852f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a6a9b476a3e3c05b190d88a56b003d1a37825647aa4bbf3051708e2a3ae51f89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25bfbbf0c5d2a33353f59ec2d94b1b190646d3464c2d0335be015ed97eebb1fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e12f2cb7c6caf66f79d30616fefedeb617cc5bfbe4f6bbac1a67d6907c93242"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
