class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.104.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "229fa6d195d3f2026d771fd9b523470b56866f64b7b12a89659a6936cf49a04b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "401265f3c4c69c4c522a6e3a7cb7718e5600c813333b39fb4a8b516d3bbe9e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb0188b2ae7508c042b5241a9141c9d515946ec1786ad9168ed5cbc34d8b27bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.104.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9da96f66af41f18e5ed1d08254b76b7b31806d1038412a503e1d950eb0b348bd"
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
