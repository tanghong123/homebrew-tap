class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.322.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7c87638f97e109e97637e8c6068ed450df7a83afaa7cb3270984a554fc25ea8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5acde2f2b398b7122b3f232ac6b4f0c034ef05483796c289b24fcb223d0d3c6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6ccde45a68f984b6bcc1207925b3d8b293383646564ae05d4ff9d680c309d08"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aab94146e844513ffd1a82a7cbc869aa2fd701dd60ac422f61b485f0baea9750"
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
