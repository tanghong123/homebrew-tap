class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.531.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "24c4a5d0b12cca1d09e20f9f1baf8856a1e3391a7d5d0ffb7c68c518f6ffb329"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dd20ec026abfe6d3809f4a70dcaef4380ceee3122fec94da1f1950fe794ea2c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58bbb0c4eb86a8a58940413c4d2ad6d259acf66f54b4088b76565ed79e856e15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e22adc6d1be002e791aef3f91c2b5c06ac1fac8e3b57fe243aee3ea115fbec8"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
