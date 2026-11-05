class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.471.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "af73ed8ca83b1b88de16f6f90ea4e5601f6c27a87af4c0fb2a82a0505cc2b1ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5a17c27c94ac810279d0dab7731473a5135a01854d05c0b749f45db3a4888313"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba81a941b782e9cd4b4c746dc6e9d11aae2e329eb6176baa47f255e267fe11a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.471.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73839b6118ed93ce0095c826402d63bd9365d8df3fe2816de2351fd4d5905116"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
