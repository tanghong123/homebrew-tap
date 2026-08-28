class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1d3d92c493dd992edb6781159856e6074298bd1a11458c2ae4071bac19d88f4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bc2769594309d054faefce0c3e4a7dd34b8d750553e2b18a1a9005aad851d177"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aeca3396cc8e32580431408478dff08340c8b690436fb959ddb638f18f1ea5d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5acfb76de1ffa906a4c79f7ba801735010287d914c1f898b5d9a37bccaffecc3"
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
