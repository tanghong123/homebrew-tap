class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.372.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "786c4d3f703390540c774e868a6fc2a239eeef273b57c475ccc88aa45f455243"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c258d5228562487a1a37be553d038a422991747fec4cec97d5d0749bb587085e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07883b88dd6df9da6250b7ff6935811e643ec867592825047337938f8a22b561"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.372.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a67910ff77e5fc90d155c013ed37abadce8b7ff924c8be0bda7d51e0822e5b96"
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
