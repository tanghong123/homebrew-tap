class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.380.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c528f5d3175cd85fc8e8181bd764fb175958a29455bd4e1ab5cc649479d5224b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "effb9699b13d147086c666645af2e6c1554003eca8fbae4f74702115dd3e3787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "daff4ef8dac4abcd917d7d7432340b42ac5bb652f500cb4d9fa7fdb84dd44bf7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e92241b81cf2c4245704df826cc45931152a70502bd84582d8f4f7189fba65b7"
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
