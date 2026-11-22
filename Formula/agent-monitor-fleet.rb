class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.553.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "04e89a3db20afd483623aa990515e2ff2aeb71ae66547548dc169598b56df5ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "708bfc7e87657278e976ad2e1516b29e560f08938831739dfd33daa1557168f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "182e2d82dd24943b3fe1a8b5b2f3a7ba4a1f4ca18bad06e41259e7abadd5ebcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98aebfc1275156d489576570adcfd7662190c42eac366d6003211d8a311a7749"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
