class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.276.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9853e7788729fa4250b9d3d4a13bcf4d3d12f098a8c0bfa68697289ee6b5b121"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "91e9b10727053b9b604442f77fed0a6289711bebd4b6f3da7331e0a8ea6197aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "545fe70688bb0bda800d6ab9b26dcc7a2c3937a66decd904fcf7564c65f7cbe1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c119eda7c1f1e601b2bc7e0fdaadd73abf8dd32e323d5ce63d942c5738673cd9"
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
