class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.284.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "94dbbb2c0b10295bf99e7da5d106d5d1f58dc1b828ff1ecc69a789e2e4a6e062"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a8057047b48dd919847de57e604540cb1c9dc2844eb7635a8d9e0c94f9b348fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4fe8a50b61ef27df781ce00c9a6825bd246e24046fa2a404065e508e92a5ca7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2c1efc4ef8292684e54e1542287a9ed1031b9dee505976012a7d2e223fbc751"
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
