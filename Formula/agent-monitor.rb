class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bd323ab1f51da9cafbc67c8b2ba2e4d7c0d4eca4ae3840a32a6518ad7bf10b9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "45f527e5145e8bc6cd32829e0b149e7111391a1fe0b702b787e700e5085884e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "481b7b09cb3591bfbe6cd47fced05907801406911add6649b3feb7c1793c1752"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69ee6d38828d315d7ac505ee7bd0f6537ca1690bbea6923f6eed2b66b6b344b1"
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
