class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "06227084a063449bf3963b4682f0f0b3aff88e69e5ad0cf61cd69328338dc880"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e57b84c8282cd5eeae441bfde19cc01b93c2a0081c5610e6946fd90211e01d1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ec16d2323dc74b10d18ad8bef3eaf3f8df8aff6a534683b5088e5ce9af91732"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a06f7fab5f78deec5331b1da0c5fd396cfac1df486935b2b3c65d46ed3dd330b"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
