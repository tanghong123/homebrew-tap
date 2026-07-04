class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  url "https://github.com/tanghong123/claude-replay/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "f6e1c906d8d2a9e6de287f62c4b8d48a74645ca5cf5c2fbd51abac2f22ae86aa"
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
