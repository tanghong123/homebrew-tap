class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4e0c4423fd61d5eb70235a6e7a0d300bbb05a2105d32cfef605d113b07ef14f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "795ff69c1e6834b13fb3ffdfd967a79a7f7a5233ec0bd384d603f1fb48da2646"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6228130fb9f26d6f4ed9ded9735d4bda2633ddedfade33320d874e2409618e22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85c211e817430913d920c8551d3db50cf47419dcb9ee38856e1a3539bdc2d97c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
