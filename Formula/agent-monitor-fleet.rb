class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.445.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6fedc5b9d0d825d2d9a6dc0dbe74baaca5caf5533b652f4645bae98f626e7eb8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e99f8f670f555c2f759153d0149ef401799cc7ff8bd22775a4b36b21e0324ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b544fa61afe90c7f37a92e012ffea8d28a524c70bafba0c797be49b434636f02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a28382f7d68732d622a3d2b022d2961e697f37dd47ae87ab3d22df7638810c43"
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
