class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e95f0bd3cd82f84cb2d5853fa8eb9b92c6edfffdb367d857a7b64874dbe8a439"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5748b5e149d76c54bf2562fa46ff7b9d7bb197d1045d9eca1137db02e43354a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dda0cb5f05a2a38758cda06fcbc840bc08057e19880fccc543eb54fe98a87bbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08f9776c6099061d662b5cfac52185c10721ba630353a9ca48c78307d5405df2"
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
