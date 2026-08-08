class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7eff2ab799ab346da5b2dd18e388329f11cae4693e2164cd6d6e51327ac8cd39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7f88763a4a5a7378a63576cf0a806a96b07bf4722d7670b7b9e5d631efa2f12f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af0005911c6b6fb22749c9a111e77c907f4e7de2cec8710a3f494c18bb142967"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.6/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "172f81e1b7df959090bf23caaa6635e79d60b3fa8f1073b55a4071e96e7749cf"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
