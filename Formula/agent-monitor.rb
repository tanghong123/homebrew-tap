class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.339.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "95384714f6f4bcacbbe1381b33aed376bd94c4b369c8262fd102a022a867ba1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2e037092229f6a316ad54dbf763d584d579b8f30ce71bf1c4a3dec4fb3696056"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96f6e987948d900164c57c1f3581e5289bd0ce4b71e518bab5b35805af7a179d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b79d75d9003587b3e5e3fbe4126915817b3fa24442a0ebc44f019f843d813797"
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
