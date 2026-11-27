class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.573.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3f5353d5777e16b9dd92fd424f926477ee9dbbff28a9542819b3aa04339c8914"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "04be141910dd9955bbf2b68e63a7a30dcb88d026a3ad120366333b41e959c850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0681e8098feaa2f2caa92f8333d873260e3b8964f76f037ede790db20e9013eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9cfcaca99d58e9d39fc674c17e8835d81418326e540b50fbea1f7461c0be5e5c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
