class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b8516dced50c93f613ef992ea7f43a392329d3e7f32cf4f03cca71d240fc47e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cd770af8c3a52d8d99f68f10d45fb124f73b78412c0d140e5317d84df6efa705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4eecc1e39b28741f2331621be14a219aff9222af5b2049e53ce48b779e612a49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32fab85cad8f94e63eee9c60ee5d0404a0ec440d964216024c9b0388271a3a16"
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
