class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.396.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "426d91fdb855ce297644373b89a3179c656413792ee63925b394da457ce3a8ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2bd80364ee697aec31e1e3f6824f681d85b76424232b513d69cf940dd4eff340"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1b1ce1defec014cb6b8537b93c3056f29a6b809944939245abae5103e07f5e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.396.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c89a18149fc1b3e88a0c86fbac06592e7a3c55e05a20551bb562a92435e8cc72"
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
