class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.405.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0e3cc4e3dd4e762037352d869ec14f75242201a1da86158b5c22fd49071309a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "aadebbea6334b7ab7a896a825a82ce6142f4963186614b9b3c89d8e77a1a6321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ff883d2e958d3990e40e8196d40f0e49e11710528f57add0eedd2466f84c988"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.405.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60313bc06fb3bcee1cd592680929d1a8e54125c237423e171b3def0b6f613068"
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
