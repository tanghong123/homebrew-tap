class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b49ed9d49fb4578c03193bbcc2a16d3d74ba5cc04cfbfa81e4f0c290866be53c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b61594895bcde45fa071bcaa29e5660d2e318e93e3728bf277edb12b305d0aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92568bbc5fa6353b5c08c108266a9afa18340b62cba7b6d63255f41aec1bcf47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bccc68a108cda914eb1d0bf389948836fd75cf5e29a8fbe9c771e55ad5bc241d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
