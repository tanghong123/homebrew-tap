class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  url "https://github.com/tanghong123/claude-replay/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "4290de73ef7fd7fef1736aad46b8dee975d9811720796f8847f082372b5510fc"
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
