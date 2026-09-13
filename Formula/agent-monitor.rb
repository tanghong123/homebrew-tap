class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.266.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7c8972d1ed384603dee89203a7f0012d7c9c28f726c874a454f6110748cf44db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "486d049bd8eae66955ca3cd8d7566e38ecf3ac7ee1f414c46dc48f7030a5c86e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a1425956953154c0a29a408885488022a4792293e241f053caa31c787ba1573"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d75a1911f18c114799ba6456a6a9086f6d56819ffe05cf81b18ac2aff9f006b4"
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
