class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.265.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c5498841a1a9a374e650f2ecc2a2d255094742128f1ca9a59d74f48b27ba132f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a1968921af94f6fe82e52a3aeed9637d3556e2c044adb6256db7627fb9f6e52a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "231443093b57e2662586c461b73f510a3078fbf257f66c5318b79333b692c740"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.265.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb697b06e1667b99e2fb833102be435b90340bad41e6c261676e885abbdd8883"
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
