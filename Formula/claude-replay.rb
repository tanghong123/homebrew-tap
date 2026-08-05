class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.35.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7954fed8d9b2d1ed856c2956897c7969eba1e10c86a8193891ea5502805a4dc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "64b3f3eeca29daf168c501d93a395ea883dfe0f847183cedcc0599220b7b17a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eea96965ac687ed72539680c47295b16085a93628427fe021b38e657ef654f0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.35.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a3836df8e145fd9b894cec54d247bea14673faa761aa15697b383e7b6f51391"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
