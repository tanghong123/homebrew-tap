class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.124.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d737a7aa49685cb187ecf3de6f5cb4bf613b5b37c607aef2f11e71b30c04a16e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3ff12c9a5495e5944c1383958c180c98f9e7a9a3c2c3f11a9496dbf44f9c7a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c8b3a5611d3fcbe4dc90a605c4e256e503a700acb35434dd7fe7fd8710ca44c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb00ab896b692b12a09907656afef73a7096fc43bb558fc2d24844b6512dd22e"
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
