class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.93.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "425ca164a061b98580c9d42eb146e216b13c159e17747d7137d29fe65441966f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ce5a647e284081529f884c3a883649187f4b81754b2a8ee68a59cfe974aa979b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8468d82bd0f254dd5d0440e59b95ec1417586ab18508252d7b335edea2521edf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2885c25c5a4bed3dc805c8114b373d979baa1afd12e5f50d9b789c567e919be2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
