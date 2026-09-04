class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.168.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f8d7c007e9e6c360c7d7556b8ebdeab9f415d59922f999f7c483bba3045722da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bed10aac126f0f4e1b286223cf4e5a1d85dbf1e4d2b626e6a8033d39d7af4fdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b992fb6bb109765eb270ee6922653c2a0180d89041765b22598b3fda958a22e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d49036a71afe08ccd327e2dcaf694eae4383d0bc0f8ca0e2dc55cd7d6c443e6e"
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
