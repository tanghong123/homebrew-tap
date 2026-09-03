class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.143.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0c0c776e02be70bb75e95f1905a5fe23686fedbae2760d15eb338aa7bc779007"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ecda759797180f5732952fdcc6c3b0a9cb03ca38ab5220d688113e36924a86b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26ea66c598c1c47b5339af8d3e36f78182355e7fe00559950fcf037dc2475775"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "057c19a3b634b3d723e324c5b4d1549702294247b7066ca8a692ba1005994748"
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
