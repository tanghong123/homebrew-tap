class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.329.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2935b905b6658f87eca8934fc6c5bcdad579b71dea116fa7c9312430fdf3de6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "934f619c8507be64b40b435dfeb099fc0230a176b0060c4c762bed6408485c64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9f32f8aaec87a69aa23041efabb119bad9c666b592fffc08bea4a6a2e5c3f29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.329.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e62c8cd13489f7ad3a4ed12936730dbc4839969e60f2c2a90f83a068c3444955"
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
