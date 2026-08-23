class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c9c36f8b1b67f90d9c7250e90abe0d39d121b17e47ee8598db15910fdfdc44be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3a347b2e0219ee799b9ee010d5a671ad369b93a269208f5083b07c6e8d802ef9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7dacd692b3620ead1e8a487faf81554e55357c62869a68a919957326b1245861"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a9dc1185b59c5083a2e72cf93a5bd732ac87b0e31686cce2e134cfcf1c9c573"
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
