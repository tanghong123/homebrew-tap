class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.503.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d4531bd7c9dc9d811c84b46683ac80a1ecb0814434058530bfe3b72a4852ee23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4ad89f7c3b9efb931f0b9898e61f2f9c2e51eb4f196678b7590a72e045d5d86f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbab2e7f5c2a7dd53e32aa20b767387ca6c6a8d745367dadc4884f86494b5069"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "991fd4e52c1f6d52a67d514e388b0fe8cbaf51e5e58774c92c5e06f0093834ea"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
