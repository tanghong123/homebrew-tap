class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.499.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1158a54d3c6cd30b68e181d10e4255fd87e877d0342970d8ec2365453a0d823c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "918fc4a42a9d0d5b96d4cce0481881cec44e6e135f538a66d005ad4ab0829f04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "063dbef32c43ac1ad5439e06628b901811c7aa3ce43120a779faa8aa417584dc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06c1feb4638d58aabbf2693f222054e18e8316a6fa02641adc1e39ef3f2462e3"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
