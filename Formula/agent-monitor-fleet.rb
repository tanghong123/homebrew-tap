class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.193.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2193b7aa1ab9aab5d9dcda01dd29395c2457a10c60b8e3309fc06ff5f3e53c9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d3e883952d5c8c7720774de6a6ac6fdff1b8e79a84cbb138df6878f7af28c753"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da96280a180d141fbdcdff79db37ab98a4ecbd244d0169f3d48c7aaf027dd23a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a29f6dadc4979e9282fcc2cd4aa7baa805ee6631e5fd70df43ab1da43cca4821"
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
