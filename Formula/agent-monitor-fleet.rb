class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.139.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4f7bc115f1b11b8bfb06da8a6f885f42c2814b367d5d610dba9f983430d5ba1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1e8138160c9c3a78da4fffc1a3cdf6f05125552a4d5288e129ac08b6c21b7892"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8dba8dbb41bd0128557dc02c70204f63e0ff969898be1021a4e18daea0dc26b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7fdc84d5411c897b980834e28b5aefa0db45bf8c377551eb2ced9152147cdad"
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
