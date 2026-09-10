class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.248.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4a2e29066b532d72486490134494f1543888dd7631921870fe750a8329e1ae00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4874bcb5ce63c8e34be0b4a8db2335a0613568421c1246a2e7088c127a641d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e51ef9a47b5ec29a2ca40abe897cad5ca0ea39d61ebee13a75967c30cd954701"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.248.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "843383ee4b217e7d77a3523177e883dd9c1baf53c30f19d26f7ef7773bef99ec"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
