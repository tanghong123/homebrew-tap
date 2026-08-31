class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "41d1214a5e9ef7d40767f1ebc49e6c4f2392861ce1d3bb24f1d023e84cf81969"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4f7d4095ebefa468759dea0bbf238edaacc85a829d896cc1dda63d99c1d26eb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1211ef9cdb678ec2aed0bcfd6fa27a550deb3d8cb3834719e3a1b567e6334862"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "19ed14688a44984d7a62ff71c9488814d5859242085fa7f7ad3ada66299a81bf"
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
