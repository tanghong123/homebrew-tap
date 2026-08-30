class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ee21a8de31ba011281264f7d3f3c1c216394edb1e4c660a17065dd5d68bf5428"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f09e71993ad13ddbfc81d80166e49e6265c98a17f2e13d1aa2b385e82b4abb41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05cf256670b92147b26bd2d790c7dc9f4a7f6f1e9d8e36733ad39c8a7487c0ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a396db2a3ae86959ea9925a6ca05d93741ffcf7867e71377cc85a551052d8bdc"
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
