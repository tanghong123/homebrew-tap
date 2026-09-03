class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.150.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0fc3ce9572975c1a31b8ddfa849f58ae71bbf4796f75518c44b411afd53b0f99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ab4ff8cacf56e6d20e0205fe337008c31c3d7b8eb9482e18d21cc617f1ba8c19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "061e5f88cf4212bb35702e3507728d0217a9e898370b2a51867dfaf10d28236a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "037de829d2f55f0a472cd72e3c9d18371b9f413e798c312089112d2ff41580ed"
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
