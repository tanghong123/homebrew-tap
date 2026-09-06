class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.217.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "672edd8b80a2e0f3b99a70585be8c7230ad445d8a05dba25e59135051ed1b313"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "28100c82032feb08c8d04359b4439465994fea7d7f5da909eb5fe9bcfa1e963d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6aab8affd775f9fd224a0a4f52754741c48067ac172b6db4d3bc416b3294c887"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6fbe391c75970659e442732e04595f2551d9172fcb6b7b6af7c3f657e395e457"
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
