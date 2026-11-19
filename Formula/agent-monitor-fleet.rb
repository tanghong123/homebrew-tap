class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.536.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "583062af95049287de036808e3b409fa9b1ca3d6f03ce20ced8a06f4a3f4ae6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9e308bab8cadb234ca538df0c8fe7938c2a9e9c1333077dab90d816247f5fa13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce517042c29dddc4c1ee7ec86791e838db8c3707ba1b3b19c62ec2ac351cffdd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9d8e6428b825c2c217a21c7164552cbbbd9cdc6a4ce1571ea8e0ce39b45a9d0"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
