class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.152.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e5afb96ee1ccb42f14b4fe6d425e95cd2aa8141a7a083e99e27d584ad420c747"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b14f43aeec8b65203333b26d5c35f9aa6d0c9d410b44c395d40f629bfb8d3c97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "baf4508603ae7424513c6c233304825638145fe378267f6dc5aef6240cb47989"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5edc40cb4b9b7438868ce0fe4cc118377afb4b29e2f7a9e0fde30b54b2c2c327"
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
