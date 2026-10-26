class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.429.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "08c4fffce903f305ae7467231015f34e35cf877b456e0972d402d9f8c9138847"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "283524f3bffd97a478be128b49a431260291d326c664ce0a6888d50968947fda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4024293e55957f0b7667a36e1b4a93431170a4a5cab6753517030b6ba228ca0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c876a3995b77ca4b5053a881d395f090d1d11d75f30dce55681cb088c00bc18f"
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
