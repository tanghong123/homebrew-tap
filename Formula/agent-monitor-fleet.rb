class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.135.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f9756f2e797f68fafcdd30d235d4a4f9c59e5381991b14ae5be6b39cfbf2b3cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "18e18b6795c6eda68748d06da9757fdf9da353ace5fd762a1e5330a8f750fbfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "40db5691084cb9301ca47ad660631774175fbfecb4d9982ce9fa2490c0fba566"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1be3d64ff91f25470fbe2c0948b533593d33d67207aeb767f07d57ced0ee075f"
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
