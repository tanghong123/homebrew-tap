class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.345.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bcaa9c81b5cf7a0cb1b5f74be9c1150fabab6a0cb417937174148d3674973fe8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "319fc3bb94cbf3708ff21cd17241efdc648021295ab5fcb3ae13cfe0f286b3e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5f2953064da52bc4378cb5227c4e17fb6b02c9586d58db03c6aee8367ab015b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af896eaf0383e97e5887c4ff29c620844704cb0e84d895fa3f6d489c392892e9"
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
