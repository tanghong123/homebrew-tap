class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.380.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "34b115ac57eccc2ba744345cc9a0964d2dcd2173ab390e43976f6eede06ba6e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "87471937afb4b78a6db762500d2681ba5ec561d49ceaae985facb38fcde97efa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4650dd5042214e05601f7045c61606202fed86048aa08d40358090cbcbb23a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e41e21e2f02440c608f24e408ee4ffc300ee1c306158f7e0d3c3ccc623efc548"
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
