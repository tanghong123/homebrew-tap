class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.337.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e7ac3959c941a0eb78c071aaa0f8a5eb1206b8c59821909eb92140b14103217d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e680fb6ee59ba385c6b54ffd0d6a3ea8bc5cd1134b12db91c7cf309362b5fd42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "064280b93916d2f90b2405af57d7fcf9041f12ccb907f3e5d7903a6846cfcb7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8748a787c6a0389acd53cf270d183870af9555425cb5e8ff3bc24fcebf1f1611"
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
