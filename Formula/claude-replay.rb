class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  url "https://github.com/tanghong123/claude-replay/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c6816e347a39046102c0898cf3810ed03e774dc6dda89a1d4f39ae03538b9ff7"
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
