class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d12e3917d2e8bfc347537f09f4a9986c4d596f4b7f8e231e5fcad52717fd0402"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a370041dce5a0f9f608f6960151f7fb6cc65e6818633fef9b2e044922aafb729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3e8c903ed4f0b4047ac1cce9e17547a3b00be8598d8522e9adc7a3d2c38236f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6beb79471e906807f9249afd067550e232ca57046227833d7ed7b345d60ee6b"
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
