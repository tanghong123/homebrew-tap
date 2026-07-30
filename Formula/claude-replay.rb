class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.20.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "491c71cb19c7d9f2e94da1ebdb038031f3bd04f3773f685f1925b0bbe054e3d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e3507ee90655455213771179fa9769691061ddec5966b40989860ebb06781d75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e3719db6b762c132330fc8fd4f30d9cd7e9def02a5cee467faccb61cf26ead2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc1f391643c46ea46e4dff3e3719bcf32ffedd45303d17b1430bcaa6e9542969"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
