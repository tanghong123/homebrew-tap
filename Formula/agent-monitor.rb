class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.416.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "42d0a5de4418d2c027f5da46618db1a3a0c791a41e0942740e8e65a7b8c5fb9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5e03bf2baa446903c110da2c9f23025060fe469fa39866e767f6a8d1395e3be9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fe8db0a11aca24f86fa9da467abbe4b807b62c281f06cd2b06aa4f9549131da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78cc3db7c28971fccafdaae86cf24171c85f09202af8151ed3cf35db6ff2a024"
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
