class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.177.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d74c99f5e4b1502434da44979cf9281366b8e29d9edb21ff6d672791c0ac4800"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d7eff23007bedfc5b1725aefe646bf03142d1953ad395d6011eb2de025f19e9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d809f6427e83b7d5efaf52f97e1ae94e603364ccc38db16bb5294639100d9e4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.177.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de28a404eb9dadfe0778546523d3bd9a0725e5087bac9d31c6c9519856bafc04"
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
