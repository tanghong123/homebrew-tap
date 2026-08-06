class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.44.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d165b7192cb806e108f8c89aa9095c6a9da7407a890af8e66c711c4210e9df01"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3ed48a2ffc6a7dd946690f2017e0fa2a9a7098fbd0bc2e0993e811d43bd96416"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6bc59e54f465fb9bcf8c3971857fa2070f10dede52fa6483529942943144343b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.44.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55526786b79b56958ef66fc20a459ec14839d0f8ecad4c49818beddfa0f5d430"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
