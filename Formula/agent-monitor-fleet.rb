class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.187.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c9947fc0ee4c6fe14d6a036a5c223c918008099d33a295436f8387d592555aa9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e61776628caa440301d2fd72e74771c9f24cbfdaeb04b4ebcf536034ba2db4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a170ed7546fd676173100c5bb5eda567d63966bda3c902bbdc0ab40483114efd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.187.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cc8f0a0f293c0dda1dbbd8425a3c67391471119b592d777e25314ab2a05a6d2"
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
