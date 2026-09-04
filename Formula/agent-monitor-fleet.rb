class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.174.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3f1372ee6da2a3782dd3fe32d8ee17215a53dca8da0f9b5e148eee6c45b0ce44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e778d1a2a39b535726e266520ae41fd04651a838f3f752ddfe0f4e6152042c52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6712d7d43a004393ce6d7dd038b13c87f9a0cb6c50447e7db6d4ecc4f44a59a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d7fb821f38eddb79e099e60be47e2e2708f19f20273b4b2f9a2ddc314ff8b05"
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
