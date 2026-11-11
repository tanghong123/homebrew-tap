class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.509.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c116806ff70ab85af2582cf2e272c33bd86b1128b67ae3a65f3e03aafe9d84e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "98e496e9cd507d9dba5dd7c6f0bcae5b4963f748608cd775ab93c2989f67c1ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb4dec00ddcb36b6f96d394a565cd44632e3f97808cfa02e717fe1805c714632"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f652c5ba8a0ea8a44c13ae2cf83389752c1873872592e2d94a7197e0af5bd79"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
