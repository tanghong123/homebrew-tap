class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.346.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "20291b67332e4e9d70a725c57f5dd705449ab4ad81c0e352b4f8f0bfd193bd11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "33928eeb02ac3aac64fcb7ce8d65d44e24e4c1f4276b9954fc457ccb81e31b4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "749231aa308fe691ceb3c9eb796548dac1da53e1fabec7093263743edc4a961e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e5cc9fd465c0835676f75c3852e469849c5bcd00b1fb72b6988b8c0ff4e43fc"
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
