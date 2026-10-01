class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.338.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "69c541037ff4e0d3d5aafe3d1f6a2e84c0f4249616b88fba6d325fe4f77b7fa9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e8de8f281de0244e3abe8954ce2362c1db53867f19fdff6e5363089a2ad0b2e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c6d5eaa9d5401ee3edd4268237adc27156bed8a13374a048d85ce3b9329ab5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.338.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70f5a72da12e5eac7d633f226e0b4925d536df9d791fb77c24ce4d03e4005544"
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
