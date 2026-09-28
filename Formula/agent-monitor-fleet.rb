class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.325.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0faedd190db6723c0e48d90b5f83c26a136c2ac4bd51f773c56da9940f87419c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e323ca518c66e8451ee27b0faafc5d427ac9e153f7bf38f9878eb43c4125a8d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "715534d4bc338177f3766722b6e707a8b9a0e0b575a2b62f9c9e86021251eab5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b67f267e5bfc1bf3d08c5914a4cec39feb21c7605b094bf3f48f0f5357ae4e67"
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
