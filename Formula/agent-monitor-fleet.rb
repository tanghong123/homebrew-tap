class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.353.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4dcb671690d383d4ef8fd5c65f8b390c2c4ec5470c0d03d969e1d3f5c86ebe77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5ed8ee012cd35aca54265d84fee310f0d8360d964e1d63c3345fe1db4ca95c86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e7cb4641e9e7ab53bff8e55dea7415da9dc6547e2541211b03279dd7ea58a1f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e868d72c2675737a1ce94e9561ddad87504b5bb3905f188864f796363faa252"
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
