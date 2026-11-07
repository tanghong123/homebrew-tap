class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.487.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "44625dd3ed6615150c67f7e47fd4a4ac8c2fc3c2fdb370a021aa43a473f1a9e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f555e19c5223bef6a9d9fd1a73b6ad25c4ebc21466338690a587685b8d6a9543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8bb7fc77bff72889acd1177af9c0e1441f66b655419bb88fbe254a7214358347"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f032ecc43365fb33e9a09ca0aca03d90d956aa763d0f21de2d1d550445302175"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
