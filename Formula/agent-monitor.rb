class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.577.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f276c48950a6b7ece08032b96e7975206635dba8a1e357709296576599920b96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "db1b189c656c0a4768e4f58b3e817d8250a38bd48dc748d52024b3d24894827c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d817d6957b423e302542fd4ced4be61a0c10cca788e780be8c40b30cac536d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12ceeb9575c95e72f472601d11c1635347c754dab621769eec353890c9007f38"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
