class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.510.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7f7f354286eb1616a0b1e02fff6100920ca402a6ce7491ced92ef35efe5e73f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e71897079c0afbdfd1253e76d08f3890d6beae5acab8ab0f4e69f881e062679f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f11708e377f123198619dfb14bc9b633cde879a0b168cc2c58ee6444b0f1ab3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bf4e906ba24bf6725c38de278f8c84522e686433aae83b4677c4353616b9889"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
