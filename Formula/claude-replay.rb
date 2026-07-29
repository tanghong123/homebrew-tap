class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "97ad1d4e83f2aa938ae1fa7c2623e9c27f9e3930bb72af4e85afb5b4fc1e2cd9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "974c5dde98dada6171e7d883c631945ecf764b8a16b6adc7c5113b40be4e9bbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1e7b7d24e46ea47e95046134da49ee07396b1ddd5fda82289e4f38ceeb8c831"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab344c0b8c0b8ce203acfad3c70522e167836350d9e5fc8eb337e4bbdb292404"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
