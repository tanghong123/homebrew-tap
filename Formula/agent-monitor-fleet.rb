class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.299.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a6dfc132ef35c7aa6167e89598312bd5b55fcded0404df93a9d6836358f37bf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8c97dbbd1e5e3b6869311e3c9802341eb3b187e0c1e06b5b992e211f996371d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d0d7b49fe552128f93a201cd980fe1782b9fc8185d6e79d8075273fa4402498"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.299.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcd98a7234720c89bd85783db5d228d02187235ed20bc509464f625e87c6e404"
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
