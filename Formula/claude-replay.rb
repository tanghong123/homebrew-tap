class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c5884b15a421b699c60d6405ec3824e9ca28275c1e53252dcbeffcd402759ad1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "defd4fad38d3936d0329f0f6b781ba9149992c989a10a739fc62834c2808cbed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d57d845b6876a04393b6dcdb509c51133338bdd0534ef7414739464781af95c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9302332c4bb61559fbec1f0d9b18e69c85abf2f3cd31058dd044f1fc42be64fb"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
