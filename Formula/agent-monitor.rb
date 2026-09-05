class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.190.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a84a00376c2cb9c6d5a2eff172501b2828c26fd25f164515619128cf189e347e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "46dc25b4c96c49b23c1c7462a8aaac11ebc240d3bcdb399e06faa9e60fbb9af5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89e0f1ae30a27df2e8b968988f9ba0a8f4d22d71dbad0e4a606c61830ea84019"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a39fd9fd77af1b93153d35d1560fb83b966396e1eff188157096fe04f0c07ff"
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
