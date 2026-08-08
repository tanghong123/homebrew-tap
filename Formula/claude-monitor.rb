class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a2a72e34134d3560cf91ff600bcb7f86a0ecab77f95ef1dd8b6979168505b0ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "60b51370b434daee617a52cc3fdbb3a82c746222bce079507fde293bf5624e02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c452d12c05b85cdc460e78c7b1c75bbed17d93fc5dc6fa53f58ce57020abfd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdce7d57aec3e2b1f832d91917ee29447f257f0a79f03d90c3b19c247c6420ee"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
