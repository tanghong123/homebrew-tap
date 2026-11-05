class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.472.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4df0ccd9252f5e44461356de9b0b5d31bc1dffbb7c890f116a6b314571d58079"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2c6eec2dfb9fcde6b4b19b70c4100c02fa0ce345b80d9b2d1f167411205b5ff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fab56d163f0f43e995fda9fcfd918a13980ca7062144ef5e0c4901b9306bede"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.472.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd66773404aec84acdbe4d7fb464eac1c1beeea2e1c09b670ad2fc183207f10e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
