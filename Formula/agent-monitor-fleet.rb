class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.224.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1dd9fdf078d8d71f3c77a70b31b78cde1e827f9dff7e65df451e979417fef222"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "13208c848c0207d8728e0c243affb03f2d8a95d6365374efc9bfc52436a2edb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2e70956b8b3078b9e016467ebca86014e5f544c2700ae777aa7aae55cf65bad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "218987dbe02d23a1a157f1bce0991908ea1a6ff1521fda14cb49b81a4e79f123"
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
