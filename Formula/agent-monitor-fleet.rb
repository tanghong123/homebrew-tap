class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.246.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d6fad08518eef90e68efc3b830b07dc8e3588b512ba3f16f0562e16be0c5933c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8e06cef8f4c9d224c6ceafd7e75d747dcc2005a796fcdb7d8ec80e5370d0c5ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24fb892a6820354a7f4f1d5764d53b6772d8d039f5f723e57693aa288fa31b68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66ce539fe458b48197d807055e1a380027781534b0cea286a17c9485f18d63de"
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
