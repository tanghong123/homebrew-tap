class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e431ac0137f54f764c48f48f6a2e406cd67499efe7fbd21f4cc54606663d2fbd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "217287608010ade9d30399a99db82c96f92caf99a288a89511df0d112859f1aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4f8c677e851f210e7cd4648fe3b8bb191dfefaeeb1d0a3f8b9f0c25e22bdd52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82f99d1dd0835d35162426ab3bee89221c600f4a54f245a5b74926ec2f7731ab"
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
