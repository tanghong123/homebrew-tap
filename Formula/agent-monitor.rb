class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.168.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8fc11cb8e26027524b813b5bbb78a545c772cbb6a207a3990092d06ab344cb4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e2dc1b05038cc80d8470cc2c6bedfd6838112baaf32268199bf753bae5cc6ace"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f7d6f38142441546a994d677b1f2fd25ae49e2896fbc44ee6ad7339f7f4690b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.168.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca5f16c23b1f141d27ad31d685e0708ec81e6c3be90ceb279f1f52f251f8e2dc"
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
