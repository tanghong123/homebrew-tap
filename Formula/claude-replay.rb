class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.18.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da6b6a1622ef27f7d5ab6a5f488107802c3fcad6f79da9476af05a8052c22655"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d5b8b355bd8f5372a90c4d760773ed05d73f536a8a258c3f9bd9b474ebfd480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c380ef738ea6db49aa79e9e2d506e0a27e7b791ffe043d83f40d24f3f7227ef1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9e7409c3fbc90f59da34a5c084eb4e14dc820d1a7dbcdcda1e9f2f5f64a84d5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
