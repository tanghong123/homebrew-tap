class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.424.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "aa2f4ea352ffea82747b25c158a05fd39c89d3ec42db34beca7a5e1c8a1be0b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "21bb76c2beec22036fc9e7ae26d93b4af7969d27517fcbb12b3c7dde57ce7c1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1bad01d22d70ade0a8b723f360c47824b335e3a9af3f228087f42b8150107678"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3765307149d50d22be614e67e5b9af7c0c39c11deba9048d4a0ad5c340b3d82"
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
