class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.198.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "39bdee8410645d3ec3a5ba8e1483c4e13767ddc1944cd2bcc6b2c75a96e08a3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "382f8250c5eeadd4117bce321d1392f0138c73c9dcaf62e97f13627c0364cbff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "41a55aeacf3918603979f2a1792cb4563aaa5e50cd317bbdc590f518db9b5c64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e38fc00e7f3c7525a111b94bd1982e158f0bfbe15e96f933c3d28779f814359a"
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
