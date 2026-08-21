class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.99.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "aa944019d799e3761672eb8ed1643f456931a9acb22b7739d8373e83cb75a900"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "82a7cf94fa46bdccba070d6f8651637b648003349b1dc21ce9e0948ffeea815c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ade486cc721c85f053ff150545e960553b73f8dd7fbb58dbaa453b91658ea4d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "524252718f8a76d56f789ca52a7eb90ff8623fd436a8d3ca55f2e9f57c572393"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
