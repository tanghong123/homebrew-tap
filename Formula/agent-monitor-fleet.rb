class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.418.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ca5b1719db46bfdc969da029561b4316208e5ec78662d728cee20f1f42867d36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "85a52a966fd068251c525a738f97339b35cd82888132b6c5f7ce12fba1b93c42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e0471096585989397a74897223af99aed81323d27dd4e2c69bd2ef245ae68ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.418.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55d41856cb37d10b146353e57d20ed7da083e4c0033d21b83cb93671443d7397"
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
