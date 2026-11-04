class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.465.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "18f0b013015fa4ea0aadd3d1a4942bf96a1f94f94e33dbf41b0d54e4b3c3fa41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7051f407b0bf46d264d52c5f77bdab4351fdb9beb8dfaab6343d51aa604fe203"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "200dd90ea17441e0c2566ca8abb7b94d0396877f8067c24cef12a611ac1efb93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68a7de748b088c37849a872d65d4eb0992375494a4df1ebe2bf6a9a15871ba0c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
