class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0b9d86c269c8c947b82975e7bc3d8b99c2db82707fc5bba8ce1225d5e74d5443"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "36b62386f76a8151f08c240fab324324abe23c1193d246989805be05773cb5cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "911ff3f9d38e241c8ba3256ab1ce6d4a87fcfee8918a0ba0d3ce8f738e406d52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f2297450b4286003c30ff59046a24e4bf7fd58aa7830feebfed6e362a9d7d44"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
