class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da0b9884b567c4766d6625a4880d095702d58351122ff66aa246b73e5969f7e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "815f06dd5febe75684c0dd8fc352ae803072070f370c4ad434242e4f264c09ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4ac6ee41174856cc17e3af052e6817fab81705b8b52d73a5b93ad3039385eead"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7bf8de1f320a7df071f6baa0ed68ee745f646405a42b48e53bb36db7106ae011"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
