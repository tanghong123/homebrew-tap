class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.453.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6e5ce28f9e4b637bb621bac5726b29871a3f85433627a95890419a72defb5451"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4f65e43328e48dcf48da124c8eb3bceaa67749bfc61a8459fdd397f4b8f836da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6801ec71124438d1b97f2d697769a620702bafc170d562f5fe216c13375edf1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.453.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1bfe99020d68e9d07070d5cff099f5c2e12ac704630818a9230acbcca0897db"
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
