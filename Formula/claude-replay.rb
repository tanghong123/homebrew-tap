class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.25.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ef2406f17726e9d1d70e3c835876e31038a71874a926a5a8556d7221c58382c6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5ea2b14e9e84b9ac7ce762ad7f1a88246e213a667544ed3dfd1914fe9800f1f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84caa58113c3f08488bb952a539aebfa36f9526dfabe87b98ac175ff197a82b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "32c62412fd75bd6dd6611ae94c7530916908d0ea64f59c2564ab29c3541c06e8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
