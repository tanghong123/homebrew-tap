class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.462.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a77f05006db246e1daa0544947ff78c364ff2d377610720609d871ccc62f54a5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "685c4665fa08a123b60bc6ebf25f5e79fb841a47b42f3eb18e781afad7840c69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "690cbe06dd2c3af970b6ec587d5837cb3509697a8f2eef89bde60244f77926cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.462.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7f068e4d1da96b704730da4c6589a0b4a216eaba7c427d9ba0c997773d2ef0a"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
