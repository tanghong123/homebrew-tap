class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.460.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2ecd0821982d29e4ff61412b302fbdea8b5ac20a8b882ca38f20082bc9002904"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8307b9e3c9f9c86400f9c359fb0feeccb182b4bfcf4e5a9815f32a57a153490b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "569dfacf8510d2dbd45b2336198b46a81227fc53ba6ac8a37497f4afe8a3b015"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c0fdcd65bf7976a8c40a1154695d5ef5703a138628f1ffb3f592573eadbe31c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
