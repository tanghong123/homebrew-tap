class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.194.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "547975b181af06d9a579ffaa278d96e68d0cff61cbd0fc665291494ee8228992"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "07ff3af8944e936e27d57c107a97b099550320f07a2f5622039f053d21736a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55244899cc328198dab5721fbe3071898050a52d7223701a475aae1732f63e4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.194.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b838b296c7462a55367d52f978efa390b38a5b5553558daa194f2e4586fe7e1e"
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
