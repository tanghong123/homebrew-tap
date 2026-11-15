class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.522.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cdc97bc877cff699069d1640edeb69af8504acf3812f7eebcddf9df16fe9fa9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9eebfa4f2d38f395fe609279c818fa9b503c3918ef511c90f4f990841ea7a31d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ead0d60ef4968eb9ecb7d67a283734447e1f1c92e709cdb16f47e29de9a90f60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c89cb34979154af8ed63090059147e35d1cc8c14c86cf99acaefe9cf9fa1fcac"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
