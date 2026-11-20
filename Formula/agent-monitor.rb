class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.542.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "47678ed61ce74ad1147b34abe967430a6f07d15be3a32b76e459e9b0d7a61200"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9bc271db79a8062ab19afc49c9c322e4fefed343184ce0a048973c73e0651fe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce32b55bfa6573ee367003ecc7919e972f6ce8e42fb73714b90b22dbb0e632a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.542.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7be777515dcabd5a87877228ea0a13a490f1819d35e0519728cffdd98d9fd87"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
