class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.324.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "96c81d210129b8d24cb972a0304b1b921d8aab835143d4c748f0289ed9c74b55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0bb1da74b2642141a90fb1ebdf2c9bd8b3b4fdfef46544e0f1085bf184bfbd0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0dd88636cadf248b8a83bf7d0d1c0139697f32704aeea7cf2049e6ccfab4b19a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d92bf5b61eb539885fa37ffc4b6c03f1bd34699e806c6ca20e602d04d7772166"
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
