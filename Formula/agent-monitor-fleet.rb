class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.403.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6ba736e2fccb3cde7c0cb61840881c0c7b01e082753e2caa1c21d9e9892b6bbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "be86248b87304adb8429360eedc6ffa122baaa0eb6146bc16b770ac61705cc7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa7eadedb0d82555c1176e1ac55999c39c82d3191d1d6ca49f6b4f4d5e72ad6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.403.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e0044a4b6c11905296bfd6dcdf31801ef31896a2cca6792d4ee4dcc3372bd5e"
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
