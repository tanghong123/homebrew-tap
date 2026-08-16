class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.82.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e5753f12b8dbb18fe747dffb1209af47a189cb09635469adf11df9488630e0c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5e5e9f9c69cbaeb8153f02f85c4066e99c65e8e83ce560527ee173a03621181d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fc2d0de645072f864ec32c344ecf3f0838aed91ee7a9fb5a034f8a741899b4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.82.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f58b46dd7e6b3a13691585f972c4a001a956d5378589b691103924a8c60e6dc"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
