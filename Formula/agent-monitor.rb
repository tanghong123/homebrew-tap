class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.131.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ecc3fa168a5542bb0c8551b1c7aa7e48883854bd0d7d28771732738776e902d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6014d7196044be63858b5fa4e4125921b81d520916dd072e69375f3cc17107e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6fb0001ec6888bce6398ac8d9b6f38313750b812d9a55e3a55fcde7996feb282"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.131.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cbe8bcbffe3fa28a7c372ca9eee751d940878106a852c7abf3c107b21b38cda"
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
