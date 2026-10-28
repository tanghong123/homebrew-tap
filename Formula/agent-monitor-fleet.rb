class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.442.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b705131b59b71dadade9de0f68af3265b49c32d19c4f32f6ae49c43df77f1709"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "eab90edf5e1e91fd3a4ae9fc5853802a6ecb820a521dfdd10b545a04d206790d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05e737c9016ebe13c3afedd9b8a094fdd134e165546fc22580a1e10389f85334"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09ec3dafbc417a03796b8b27bc862b90d754cbf5b7ab231461df1cdafaa1c635"
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
