class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.398.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7610b6e72b5d56852a003e326807ffe72aa2591fe7518d4fa69d5d9f2654876c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b243a24f0e754dd094eb086a6489a7daa281f2f30dbe87f0142804ff0604089d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31cd8111d758563f0d5d1475b990b30b8e045d2b5a514b2e786673d088b551d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.398.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "295d8def05ff097ea7b79360fff5026b4407aa25ce7d69ce1b413b86487d1214"
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
