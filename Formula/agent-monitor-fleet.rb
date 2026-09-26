class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.312.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "534f36ba3b4eaaec8410ae3ebbd785a70e916de911df8763d82e18b0eba0bfd7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ea04790f48a6abab5de205b2ad2251b7b473c75af17b235d7642a937820bfb7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b251c70064a52d850a08ac8905d8f19c6eb75006821d2887bebe5a0a67a53dfb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.312.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dccb61ef23439f7610e965e946461bb4aececc2dcce11b065fdf4536eec8885"
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
