class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.482.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "30bff2525ede2055d517e3a91858bc922f6a0b81f28db2627fa9d1935c85e3f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9685f95d827bbda3c2ebea0828c856092a821f632cc1e50f674797e39d4fb412"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5e22376eff52542f410421da5eeb8e3b599f2b6ce6ba9d42206b822654fd62a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d7e94b7d3d3ed0b3a7dddfea02f268fa8d33864e6a09627b2d560db63ff56edc"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
