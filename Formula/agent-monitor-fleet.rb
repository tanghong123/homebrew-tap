class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.532.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "754a02da8f162a896e668899f26eff0025c8c58fd6c8e7a93192cfff97d37796"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6043201ae7d8f5eacf0351642c6db87f9041984355290ece3f465fb74a0f1fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad8a02e74f85496c30fb817d73122e7011ae2d93d65cea06b11e22ead5a370c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.532.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8edef05521443589840bfeac7ae97aa101c2326ebf3bf4f5d7b5de2e5d49f58f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
