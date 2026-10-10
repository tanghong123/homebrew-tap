class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.370.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "558155bea13afe98b51390beb5ba0d0302e02c1129010852ad720fa9f269c60b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1b6906dd8b3b22598a9387761c1784a57c4d080bd1aefd40476d4a19f9948104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8dd8d52bbc493c89942bbbfd4e1a82cf748a4732fb3f66ae47e757c451f7d60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c48d6b563fe3a1481d07e8b0532ca8f62a452c1c0236da6c6361f1298481e6b9"
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
