class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.524.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7f329b9a7628b521b44ad1b34c26918f3e74b57888e9087035d80f98b3c03921"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b0c16a71b005f462040c5f2a9fb9738ea9a13c1d485fa742e7473aa83b69b56d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b463cf95884c202be7615175ecab5e5517981e8aa9d50fccb52af4ff9599719"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17d46cd286adc799e9fb245533128172b12bf15d3b58d48280c241c81289d719"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
