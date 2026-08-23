class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e677ba0ee4b7df423a6129c7eb16618cc7d49b878b45496718c7b673b5849041"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3d18c045fd3f4be55d0f67d07f8f0a514524cb0897c10c611d8ff317a4645afe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c272a0b1f38131a4b1b88c61bd754ec457bbf693c21a14f64532cd00979f95a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d31eb2b2c25e4a991feb7b9e00d5f18bc27f6ad28985b41b14fa3cde33b66f8b"
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
