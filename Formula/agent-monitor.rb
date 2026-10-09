class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.366.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f539a8147d52c21a2a4b8f9c1cd82cbf5f594926b5d60f2e74ca7c381cb7b592"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa1d1751575096bb61d222b6d0dafa24d4c63d94de6cfb66294cf963b85f2fda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23de0684c5331631e0c3f2f40d665e10f219892191e341cc219bab232ada8a7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6077469cf76d9c7c154accb6dc0ec301d07cd3566f516f5e08ff212dca628621"
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
