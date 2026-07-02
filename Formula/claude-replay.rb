class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  url "https://github.com/tanghong123/claude-replay/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2c5f3d98f4ee578f147ff749679171713dca704b182264961c6d7e8af4be9c5e"
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
