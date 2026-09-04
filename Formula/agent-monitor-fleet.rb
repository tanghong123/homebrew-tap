class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.173.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f1c827a10cccee83b832efc95285b39a4d7a90b0cc11d65abe473a96da6b91ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b578ba5fbb3eb31f1b2d76ac3f3f053e73f418560b2488fd16ac46b510275267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2e15f225c46d2488668b0742fe30943fc15aa9ae695267a84c238ac58f4e379"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "804866de4a0f79eb93179ea66d566b42163b331b2d459569db20e19222e28640"
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
