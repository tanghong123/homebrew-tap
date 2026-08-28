class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c5314e5cb44b14950060418c9ca3092c5314e7fc90ff79f30b52817985f8c7cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8fdfe8229526c6c960089204c3e72cd4d5760ad39f2bf088a23525b85d03b0ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2af6dcb52816b12a4b217f178376432ff0e486513e5b033bea45711d4d4fa58c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "945f49f6528789d5f2c8c49af502813c6a14cb8553cc974fafcf6b5ba1c76198"
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
