class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.23.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b0e7403c612354972ae927c0e3735b0e6e0da35d000687cfc97e8550936b6aa6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "48ce4edaaa9365b9280c4398cc41d9d95dd3e0864ad122b751bd48d1c522be4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "794a4ec267bed88990f424c0a3a13c511330bcacc4d1c6009d4978ce5108e5a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e00a216528eabde65567b758003a435a6b676d79d140c510dffe1f48c377ca2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
