class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.21"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "32fc0dba33768ef08de096157acb45d05a45a86e4b428a2cf4fe633a2a61f8a1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "117d2ad5439bf10a0821e7f9234e776972fa2838aa3ddfc13d3d8d191211dde0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0912cad2caefe4593f10996823c894265d83d62e9800b4a1533149207dc12205"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "295eb5486ab61b5437b1c91a44b757e049ab31cac7238fd329569fdbc31f3671"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
