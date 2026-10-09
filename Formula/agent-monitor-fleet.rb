class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.365.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "10c95ab99dbc837a085664a2808373280f121aba8f1547cd3723d244156b9025"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e169c7a2a6d4f3c41bc1e48030dfedc6757028dbd669f799f29abcd1aecafe98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb17e6abada4c3c225c4de4c5b5fac60f7495a83111c10389d39ad4cf41293b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.365.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c2588ed919462be01f61c82de9cd16118a14fb75c999a0e05c026243666f1b4"
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
