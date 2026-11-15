class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.523.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c5181d90e4902f3f1211d81b6813cb54cedefcb7025e4e761f15ca1a486a8ff0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "12f0d3af08a0e376dd7f8fd000e50cffe614bfd37538ffdf8840268fdb3745f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "faec45acd4db837bb021a63efef637e3a7adfe5b48935f959216307d41ebf1b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "952c9044e4f8cff5a36142691f9da5df8cb73fa50765081a9d6eed8e933957ff"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
