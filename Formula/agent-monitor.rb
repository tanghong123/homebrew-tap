class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.313.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7170976d94c8c3ea8d4d117d8dc7af44d85c917d35eeb8c76ae4715136e4ea02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b032f4c72084b66ea8cd6f81459d51ce170756b8d030697701c054ba51646c5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b804ccd819bf5ad49ea5cd0828f8eb6d99e4a0b6348b6c0abf438256ee7400b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "988e6557bc38926fb37b0c0c9b1cf55d2eb0eea8fd00610efd1c9a11c3a8ccd1"
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
