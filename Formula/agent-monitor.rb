class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.531.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8c1fb988462793da9e1244708e0896cecc9b8349018f1ebbce752675c67719d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "062ce5d94a014a4949abff3c7ef6b2797f2792df6a220f8776ef56f88982bc00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0583f4f99302a5f892481ea6803f852dca0914039a26164be94529261c0f482"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.531.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11c944398e981c931b55a2355c2dab367d5957abd7c4c21ca06aa4ce7d6b1be3"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
