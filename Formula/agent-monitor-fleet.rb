class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.558.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a218b656ef9f2211582c810ca0906e86a51f8e10ec27ecd3c63fc96734d0d405"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "468969231ad85664d009251c69b51255ba0ea29607445216eab96bc79dbbd382"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f986fcbc5a22a3c5a495ac7b4f42e5de11a96b3c6befadd7262b7f60b0316ea6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ba26d6b3cec7fae135bf7d6ba0108f9ada529a5c6046acc48e1dc9131f74104"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
