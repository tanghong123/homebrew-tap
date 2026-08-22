class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a08f2826fabd00da94c4983867229ee05d20bfcad9b697f18f30ad521c3835db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f2aab0a862df2d32d5519c6e8a048703c3a65b39aa5ac029bd3526487cf1f676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2d57d18478ef56f1c6a65ab93729afb5f8a06ab54e3114c20ad1df87ff68eec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b029278b485262c1c7ab21021b17a7dd0cf84cc6ce8baf88cc9406e98b30ca5f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
