class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.493.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "81446010493dd2b36740d6d4b599479e99d080eb7835139e86bedcc3176a2d0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5f46aba5d5ad55ac5a7c5a01e9daad9bc619308e3dbbe6ff3cd614dcaf9f9b65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "491d4a8d6d30576f65b3ad5e20b57db99449d4565e59bdcbbaac020b97da1ee8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d4df08b5a434f267d1072ef7d04463ba733f5bea8388eb18b06478fb4046bdd"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
