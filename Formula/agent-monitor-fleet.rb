class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.189.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0dbf20f818ac21a03194fc25096f4620bf0231774850df4e25229cb5d85e66f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0e0fa47dc62ac8fc3c12c9ba4d93ed0607dd50dcb04792862b1f294858c84f56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e646d9c6baac2270c511ed4d6f05288917afe1290cd6da0e977e9bc98dd4235e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdeed2bc58f2cd2933b1675dae6ef8d6187caf0e45242c194f91cd5a3a68c6ec"
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
