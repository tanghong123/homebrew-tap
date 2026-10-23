class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.407.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cb03b3748a0e056f8c69c803d1b96e9e92f790f12e497d6552379dfa10041865"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3dbf62942e245af2d19310363943aea80950c12f5dabe33147114eb31affc6c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee504c01ab5a217328bf4c6140764f13db59a8da16896ef75e7fc8da83d68f54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa749c4a145c481af96f68dc8636c7b2ab82ec1b435772b58a51b11923ebefa9"
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
