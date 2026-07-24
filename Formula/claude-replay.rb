class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.21.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f2d800e99baa2fcaa7f5a280d47f05d4f282dbe046e0cfd5aad545f0db59e8be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "14a04727e64f9204f22b0ef03ac5a6a21351b5c9fba54b129af26667c3d9b3ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ab33887a15dab561d210d9cbd7931d9975bec39189d309fecff2b9702101b4e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.21.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "894b4cb942f683f93536b8207daec0678ba1425f6c3be557bed2f82b5d300109"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
