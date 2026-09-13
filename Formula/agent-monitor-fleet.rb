class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.264.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f46be413fb4e48f1454c8109328d33f7bfa71442255ca60ce8dd3229c4fef0da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0740bd7d519cbe78b585353551bf6d3fb74ee9b56074fa2e9aa4d0bb33af83b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10103073d14f5357a8aec823353bae824c2e78814e509cd0de3182bb6149d336"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8cb60c6f2c602ba63887fdb35e63aaa5b01d42761e922ab0e6c4e2eb12fb8dc"
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
