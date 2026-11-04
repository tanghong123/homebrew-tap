class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.466.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bc0d10bb54f45c12180c1fa786e1609c6810d14cd525d0f1df111aea88d9e832"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1ed9f841c0f09a96a0ef81879cee069781b0d2bd7a3e28dac848cb9df36caa06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e4a1a64427f91f3f7e4394f6b4a6a0d97d3cbb6c10c299b45d06bddcccd58e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "793434928a1379012de63027c715c36e8b235a3afb4e3d54ada3430faa1e3108"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
