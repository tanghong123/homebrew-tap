class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.302.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3091e89e3922b2cdf15b1b8de605e00c77c1b8b53af12b930ef7e0c10bca37b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c7d4414ae27cd08761c4858b31d6c00ce17dd3ace100b8a35472eebbe74a8902"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ecaad3714a5b211bb1b9bd31d0427857517271aaa435da6ce91ea8fc61e9441f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a3877de643a3f43601b3fb97b70fe727ff8b86e0b53faa8a41b6b4cf1cebee8"
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
