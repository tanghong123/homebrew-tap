class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.385.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9445eae89ea76b80b815abf172c39d9df4c2bb22d9fd538e0a159b850dddfbe2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d2aaf7f0ba5a10e9e8be861da9335435a889bb199cc5f76a6f56140fe88e0342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6292b699bfd2e9415d0856c10694d7e9508da52dd9a5cbfd0ce25230f0da2d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87c5d1c6085c24f4b42a3ff7c8dabe966c1e76beaaeec65c3fa1a9c720bf4085"
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
