class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.346.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6ccc73bd1f7362d96fea88c902fdcfca53ddd5cca785cc6e9804c711cec4642c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "371963bf6a2a9ce3517b34a5e78c4c8c7c22bd498c400a3708b896eec2545a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50ef4da3fc86ea738cff273382ee7c74f2c1ab5bde6b06d27d2b3ae11dd53c8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ad069f616b89d7788acdee704a6955bf1ec32d79e51ebf3f20ab1d9b509bb5f"
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
