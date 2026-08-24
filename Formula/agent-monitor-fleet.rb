class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.105.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ea46b382308a8b23fb5e7d80c5fa0eb0ac3062d9b22e582948336b4cffd74e5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "621aeb2ea2c072d4db48c33a819f9faf958e3bb9c48e7db08fa8b84c6ca18933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42e65049edaa77d0aec2f7cd6858e42ef935af207504232c854491025c7e729c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.105.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4fcc7f304aa3bc71a589ccfacdfa0bc95ea0a9a8f8529cdd83e9f1d1b6b3d203"
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
