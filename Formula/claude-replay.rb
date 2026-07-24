class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.19.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "50285f3148a0fcbd5d68e7309be47e98120509f0deb34d16e5f61b4e75a11e94"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "eb1214bc39e807f200b7b8fbc4ac199a0e1110303f19fb7a6ecaad6c8ecfae89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0020f7fb64480d185d67d056e8907b47fea521e965c34aa2d7fb877067936b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.19.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6df87ce8bd68e2d4128078a2bb6756bbe2273ae6f109bf09c6bb28764d5b686"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
