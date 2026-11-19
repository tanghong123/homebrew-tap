class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.537.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "574323d656bfe033545de90acf2baa186d1103679dec17b9a643370b0066a8b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "be13bd064914197643a4cc67ec3d5965c164e60b747c980326af368aab8cd168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "038f3f50918c461b170b459b10a4247894cb48dc053eeddbfd14e196c4c3616d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f90470b68f5ab82c54fbe7a073528d8b0f61b3e2ab011d6766c11e4d91fdfd7b"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
