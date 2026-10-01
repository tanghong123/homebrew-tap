class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.340.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2920d2bbab50648dbb0bba421bb6553d9455e80c213ed253d9ccc1f2a997ebbd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bbde533d36e346be4d4838da3a4e7333b0856c7dd02b7a2b5f7eb4976047ae8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ed8f96a3cc2a6943377ad17d4106ad4344f6095b4370b350ab81f92216a7479"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26983cf61bb8cf6ac45cfc7438c4231c87ce08f84f6af2cd0140d85e09fea0e3"
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
