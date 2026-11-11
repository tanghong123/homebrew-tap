class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.507.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d14abfa2d0943c7b24c41bd328c5c8ca24f9822b06a908348c8d02870cc0e957"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6343e17834437b87811e4ec4b4b2997a4ebac567a01d8753a95372a0a0567eaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a55fff5786468ab27565a3a2a74a30a9e129007c540c785f68179b6ac970cf7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.507.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b878ac9bf8bc6335b269bd0880fdf5e86dba9187d2a7859977eca2b28990dec"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
