class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.256.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f1a45ed2aa56d709a6e302514048cfa01e98d7d16e366b1a4298bc46c0dd5ba6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "14c23dbeaf766ae0726af648935fed20890fd69c53fce12f40e56542cfa1b08f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8be9c17b2a7e4f473945e0cf2fde7a257324753892196d2cf949cc7afa57650"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.256.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8407c6b8afd0740e0065048b99c9561b2ee1f94b28e777bbc24d52bb8f603f6f"
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
