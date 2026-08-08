class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.18"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dc7b60c0d8cfa2961ef369d86e00d34f88e7ebe863fda16d935eb7afb542f824"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a3829f7ce3586e53f70a0fe1a0d15ba8f1f7e9bb0e83e5e769f5246e1daad299"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce3777987fa6234d2f2b33f05ed506c6ec79c00a6899d854b08bd0bba94b609d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.18/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4f3623f64b4d2ef9a27a88a5f20dd88b43833f9ebb53f26ae0305547b920d9d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
