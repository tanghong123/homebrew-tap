class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.137.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e116c6e4ec52e61d97f5ba7a199b25e0d9940cad4073cc427a62714a6e070469"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "56d7efa8fb4cfb23c542277ae182b8eb2f4b3fecb362af92f1995c51f6ef993d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0dcf2b0dd1281dc9028cb623f92a6354eab97755cc2da1b7fdef648240ce5a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08d30f0e98679fb876d1d3876c4311b4d7c6e02d14984f96e29b8fdd50e15cbc"
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
