class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.206.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e06fbd766ed17bf5465695bafdccf21b0964334aedff2273ef5549e20023d558"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "61cda7c50f56a089235dd2182a582d6f5f91ab72026f6acbe204d1be7f3247f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6bb8b6a63125df9390c6c22a45a5ed68c1969b27a53746a3b844024b6bb603eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.206.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00aa5760de0b3a31dcb23ecf1f484f366850837ba8e51fca07059e5603d6dbdc"
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
