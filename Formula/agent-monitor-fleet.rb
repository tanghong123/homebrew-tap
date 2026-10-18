class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.387.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "28ba40d020a9a44a5edb4d15f2e4cc4d8feb7cc8e1c45c4f9e324942816b1b03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cc14e335471612ffa816b9223da25667cce35adeff9770a25ac86f73c558d20f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "926902df470b0f43b4fd0d3e0b0beea4ce8738bbc19a6b4aebf08692c4d7696b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed9ecfcc4ea34cc42f216909dd25a8d04b90b1276f66f42250d82177b352006e"
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
