class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.30.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0fce9dbb14499901f4ff437acc85c68dafbbc53998c9ec567853c9accd8e69e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba0c6af154f4f7e0c049cdaa843ff0f0d8e5073d74fc01754241d3ebad57cfef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abc785111fa49532e41f64862e5204e425fe50db26a07dbe5f12f00c2a815f94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.30.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb40b11e8889a54131a6713f9c9ff61745cefd1702b4529db81706c14975591a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
