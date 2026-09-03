class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.140.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d1a1e49a7449f8ff7d295640a662b46f0bc3c153c1e851b59f14e14876c438ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8991acd62026b081028c8410caf4f6b2de6df172df03262a88a5ba69b3e560dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ffb46626f99922289c64df707da7cd606033ecfd79bcb7e24edc000a2cd25b2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e562c52f930f0a4e24faae43beea704351d5aec51c8aa7bd858f19ceb44db5f0"
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
