class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.309.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "678cc2d4539514dca1483e77aa1ad125f047648c971d7132ffa2e365976d8a78"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "737681c92178d34ff90732cec1f82b7879c55fa55a2047569cf0928b66b98852"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "954de7e171ace2c5c1f125d78bd1d3e91d021c9375e8fa5636941c523d4c0e5d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "742bef27d713bd65978250123c51c670f7bcc7d66690215eeab825b6baecb252"
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
