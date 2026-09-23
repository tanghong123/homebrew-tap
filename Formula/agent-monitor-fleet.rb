class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.294.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8f4b22e610c784fcaf76ef6247ca16cbb3c7a6ef46fe6779984eeacd0563625b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "03eb116dcb4cf3ca9f6765b0c5db987afe54c5603b4fcac5facafc31f0f97f93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "941f6d7e15269745224db32a8705d874833ff841516e89cd1389f87cf5b039aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13aa1670c1c1b4821c9031c6e98b8ede157ee466615d15b2033308df5bdb2033"
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
