class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.287.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cd4432264c8501397dd01764c56a3d24a0935619fd0c42be6df628ae247e0026"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fd737afc28ccd32ee2eb92dab9615fd01839b60da175a322ac4378c11735a128"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5589ba480a3fa6371f0f6920a85cd7778fa1f79b6c2ecba19aa5ab67c3939eab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44952b86e11b6e9021fd2a1f2c2ac60e548060e930c1ea0a9b1ce2e673403acc"
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
