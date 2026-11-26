class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.570.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "922f5bcdf1ba84f8558915cd6cc65d1fab044662e8fe61ddb27d405633ed5037"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d28ede381c98b88ab48e1f8fa4b7739afdab7acc477e9ddd8bea572b274df3ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "253e5f9a0329ab9cdfe641f91077a62d318f301f50017637227418d3f53e4e76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.570.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10f4efbd2e7f84a839be70ea22d7fdf050107775ce7b6606d0d96dfbce03f2eb"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
