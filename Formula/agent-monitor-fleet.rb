class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2d762ef0a2ae157708b16e3205290c8c8825fbee415d3c7a8766b69078520307"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "89298a701418f11272d06179c61c6687ef572a606c8e8c9552c5025df918c0b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "431e368bfa64a45f6fa8ac4b1db4ed4d469ab308296fc097b5dd00554e1bc6f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f65eff31405361b7a575087ef514cf2c840df43689178f69d9cbd541b24f9f6"
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
