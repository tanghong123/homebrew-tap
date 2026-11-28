class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.576.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4db2e062473e3be6f88d11ffc13de7f2da0dcd2ffb7366d89662cce2d0481acf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "490c6f3f8c78761febb498a9f4f4171d9deb9d91e9e22e5cf7b4002b81249e7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "825690b1725aa5abf35ba7e1d105c3b9bce370f3cb704c1d088aba71dfc439e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.576.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a8103b74f43ea09a0ecac24a335f37a64cda891bd4262af065a6066fc531fcf"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
