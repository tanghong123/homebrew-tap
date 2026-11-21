class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.546.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "654c27b4562a6fccb2b439845b660fe8128417bde1a1b1947cf99e753c7a6cb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "20f7b6f093ee2faa7f0fbf295d0aaff2f56cce7f1cd8a461dc8b723e5c0dff99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6f0a6f7978cbb24e4b5591f2f2d5a345ebb10560db143a442b5ac0d7d5dfc18"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60d073b08543877c459e5424ccc2ef83af721f4a0c897f4d68e0d85adcd6c1d6"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
