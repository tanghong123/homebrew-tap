class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.138.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f43dfecf11005a8802ea8c7ee4bbc4e9e3ad0c9adc025bec8064aa2c386b7000"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ba18d3d45d64bfec5829c11020b03786451ae90d1ec81a12a468139fc05d5559"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3caba724095d203a0e5c9b6ca5e5d00eb950225a647818171343c111f14cb378"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.138.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebae54b845aa85108860afd73847590ef019cfad7583561f2455faeca517d125"
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
