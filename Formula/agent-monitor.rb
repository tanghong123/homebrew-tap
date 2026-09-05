class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.200.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8336fa9e1e4188c9891415d6d49b1f8688637b912de38290cd4227af7f9b3b1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a21dbd13e6344531a2e5bfc6d74444f078c23d5fa804487b71c46ac967b8e9b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65d786fd0a7568627f517b42c8c2fd9520c731adf4baa51fa180995c8105a9b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8d7c11521f1c6197d78af130d062b526375ba489177244acc0d5410624b23cf"
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
