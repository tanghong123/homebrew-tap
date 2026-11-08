class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.495.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1645cbfef9ace58dd3454e5af0f1c9789162a9acc6097e4b6cee00bd4f35ebf1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4d01dfcf9bda730cf49770db593f04784bd9fc79564c2fdfb418a281ee6c67c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d53f5280bdda8a2c9ee2b84d180de95a6572c8c63b7410da55a044e6e90ef0a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.495.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f3bd3dd4162b97729096908b577200a97725a9cb53e1e55aeeed7f56bfe5b17"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
