class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.335.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c9fe6c0e2da945273c196861c3c6133b25c114ca08b1f2ad26df94a70ef5688f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cb449efa4b4789a9c11b6a16cc44fa63d0abb9230a08ce8a05fb9ceed97e700c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c27a31c3b38639095ed58f19dbeb264087a5be1e4cb8c235846a1766508b0ce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.335.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36ab8547e74840c3e54edb30d33bb571414c585bedf1f305bf6b1f246e935472"
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
