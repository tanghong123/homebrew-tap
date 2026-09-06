class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.210.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d86888c4b942bfa1617a2d76985be13e076f0cf15c4e3e4055154122b8d8c6b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cf969d8d60a90cfc93734527c0ebe1d699e15465d3d8d51bd6d9920e2652ee1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c463e7b76d56c33632798ed9a4a0bc5c0c9ff590439b996249f90183df3034c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a398dd9f89de61e6294acd60cf7506e0dfefb78a25d1f0efa0517b50ff88097b"
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
