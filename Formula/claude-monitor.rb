class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.21"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "84f7c1d0b37af96b78a5c7206ec673bbd96d3ec6d984f85a135d49c2400801b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "29639dcf31849a226c417e8637197acedfb60182c3507f1b0ad120aa2d2f4551"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d58748aaeeedb1399abb90f3f49c883595797904f61bebbaebb2df402508484b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04f79cf1084be2a6434f95ee1b92b914d5e40b66c810564da12f5cf5dace00f3"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
