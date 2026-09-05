class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.208.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e7f5d49426f7b35670ab99a325e2a11e4447c7d4d0dbdc8b7403ca382511d6d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9e19a9a8c4aa0c0c339bb237fff98df8bdf651bbf1495677abc10778c4268b95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea1e6b5e9bfcb474bcf99e4abc4d19a8afd610575758cb4ce45ddd1c1d313322"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.208.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc5528b5275266d4d6a70401fa8a109bbbee2cdf7769d49008b7911585834064"
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
