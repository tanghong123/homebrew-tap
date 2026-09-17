class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.275.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0ac8e98daf0313295d3c98605349ecde09abc7d84ae2c8214f4b16037ef8eb8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b18693e2dbe1ef03f33f30fc026a2d366f7672860b76fe1f65c9ecd7761f17f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0be4d45167f4e6e48e351a37aec3f3afb0ba04630e6146131b1c800ee436ade"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b931d8109c751a2b3d56361c40d8048172b31de5c946b2d1c5c701be648de79d"
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
