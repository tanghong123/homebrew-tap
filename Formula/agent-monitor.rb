class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.255.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3011ab40a429bc55cf1c0a08e1c6f1dc2927828fcd2341637a10d9e827eb588c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "28c575a265e3dbb1e886888ceb9b321b8282b1de8ab998647a29952c910878cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d1a4db5b6891e04ed89636119e0536e896bdd38609ad102621673ef71ee7665"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.255.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "218aee32669245d6bf717a922cb293ece9794bf704dba1f37392ce90cfc0c793"
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
