class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.446.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "12579600453c61bc1c8b7f14f4edc80da56bf4d221e98b0899bc472ef247a691"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4a2db0f9ba58103460700c0e3cd64dcdaa63fbc4f051ac7216cba935bdd6e244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "323a01a8c4ba9bd731b0075ed4a0c098114e379a783b9e39b6edea943961de2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99939abfd3cb404c13c3970824bfdfc199e73967f005ec1a315ef6cc2a2d032c"
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
