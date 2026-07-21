class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.6.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c98727b384fb91cd40e193e32ed1ac99aca295502fdfdfa2f4be417a0d51effc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "96c1f0b37bf473a6950b1c4ff56e81605fd7274ead7a416ddfed39f191ed7ba5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "104d6bb302262cd6c810e0fdd31325fc68716ef92a33923c1ff95deae4c63a85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.6.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2080f9f9a490d1b3ce6557b711c9cbe801b8c8b6bbb63f2eae95fdf69f0f02f7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
