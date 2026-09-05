class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.191.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8c17d01aa8d04a3a3b416385c10902515e93cb21ce5d00a8d81995fa8e5993a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6a4e230706b1bec7cad22ff81ead4ba8c3e7061514e0918e5816bea734d9c5aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c46866663e254c18dff5854b4cf004bb1c1fdf4f0475647322fc147723b446c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b6e99075e2d919ac490084a6c71bc06e93adb205dc334623ce2aa27ae966da7"
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
