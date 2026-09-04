class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.164.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5115be8e3ecc78e3e93fdaa03ea218d2353266480c25b2cceb0cf3ce1f11cc45"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a38cc6711c8171fd23691d9a1628699cfa75e84867d62d284ae095f5b1b0845f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06e46502b4cc300f8947ae2c7265da24892428d66b15d2220531c7525f563d5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.164.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4f520723dcafb5f8be1131fab1eedc507bfe58fc2798c17a8d97103b7fadf03"
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
