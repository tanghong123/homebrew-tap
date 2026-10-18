class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.385.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4c6a2bc94f986f23a1ccc9582ff485248ce7052f0e3482074bf10239759d92f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cbe701a9830231f7ea7b691c314b04ab80d96bdcbdb988fdf60e73bb064bf93a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc92ce98da8c88ee290fec86507c14ff29a86addc57f07856862234583cf30fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.385.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "640e12deb2806486b61726e267e555e18bebb0ff3833337a73b59494acce153c"
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
