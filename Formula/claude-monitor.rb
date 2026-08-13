class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.69.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "698d1ab6a9180e7eb7cc935a290ef3f1c657dbeb7425f78169659396035567f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e2f5a9ed2b24fa3cf66923a03a09cf28b25775c4118b93ac27e5280c42f3a0ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c050700c424b3b748b991665408c6d21b738a27f7112de67298c5df148fb53be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef06aaa2b7018137b1f159b534db3f52b1102e2901df63c96b1aac435bb7ab3f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
