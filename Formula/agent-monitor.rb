class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.508.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f362b644657d85c6f633856ac2fff03575331de218ad5dbee0cbd29ff264e48a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5d2a0237154fd7624035774c96eec7bdfe5d0f498130ca3e6bb0890eca68a8b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be6e307b0e180e7fe19409e67ac1769ef9951f34a38d890ee0dd106dbab5def7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c781fee7cf59bbcf0d9c9de26fe56e78a4bb1d3fa8e69bf5534e44e5b6b690f5"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
