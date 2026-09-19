class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.278.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b8d699cf41b613ebe559630e1edc1cc61decc2daeb2ba1349587ca8904faca64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bdb5c88bd1f9bdfc287227c8617e8dd284d00aa46b675f8b3fad7726f4e98367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02a28dba9ad14087dd6b70a2c7ff1334ade8e0586e81e0a91d223942ac409c82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "088eaf5dfe8e0f53c1fa9e7b8dec625e6735a4c89ee49005fb481e687ac68c88"
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
