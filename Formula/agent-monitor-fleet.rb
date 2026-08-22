class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6a65a08fb8c4ad47047b8e447cab408e43f1fbad89863494d83782661768031a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "61a6fb51ed961a708e8ba19b1042ded7d0d748715947649124b5826672f24df1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0cdafbaea0ac31df19ce2e2710068d06f3e88b46ee35dc280bb0c83550f1f97"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ded78c269f280b5833d75f1a75fc04dc408556e5bf1019b0784491fe3a134d7f"
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
