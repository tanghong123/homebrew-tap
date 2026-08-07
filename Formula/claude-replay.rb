class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.46.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d1ef6c3ab4891d8998c76a3f3d051de7fcf2ed571db60e66b0495433014468cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e6eb50b6cbe1328d02d738cbcb47de610a52dc1bc49ab7bcc7d70b96f7950e35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d80e072eab29f189ca3373a037b2da6b9bf417d8f29095e032e150beeaca8fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14a782569c61d03d90caa11609efa9dad63037c680fcc3183f472d59cc8df85d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
