class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.15.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "23d33a1e48fdb1f1f8d59b4d4e590dbf2f6639e451692333b2c44b5fe80d174f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "70e26d18d2c6e14893b976bba4206c01e9bc37b2e966225444462e196b12ae9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0842188b779335279ed1e9f9508afc62b7c7d7e746dfe0470ae085f11dda7b69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45362106850f0aafae77a89b479fd6e45a1df634d464372e549552e8cf18a26b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
