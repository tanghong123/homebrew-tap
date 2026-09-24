class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.298.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3f59b4ea4e0f809717f50e4a5c0a44755ae34417d0e20c815515b38c3c6b29fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "de777df79b26f7586422689a0b92d6a95f62d7ecf8b200b0f34d6441543b8085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57e15bcc4772cd2b1a9cc0b8fbd5d4a53383f2f3d1e28f191c1a0664e9662965"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cbaeedb77286f49acc75ad889347f67b0ed19cfdcc5f00090bde75de93a144b4"
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
