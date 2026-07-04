class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  url "https://github.com/tanghong123/claude-replay/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e48686f656d37321f5d219db6fbb107c709ff16aadc272d29dcbc2f0b8f65be5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
