class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.574.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b4b0de51f12579bc865a20ecb96de31e7c93748a5a01a07d67d0d5f451e84b9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a2183c031e6adb1b67d602650568abe592b9ccc8f6697f85c8efe4f9cb1e1d99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8bda0b197a52d161d29f18aa6242a722ecb2937ecab5231b4df480a5d1feaad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.574.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4837dc8f0ab5ff6f725e576b113fc8f48bef9ec8d21d7a51221bc56f3379602d"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
