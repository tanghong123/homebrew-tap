class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.40.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7090184d452332101a5f3d0b73f13c7ce6c9a7d2f63473dfb13ea89ea8cb1e5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "264bb1bead3c265d4fad88034a6a997e9e99d8bb152d77090c4185eb795876d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd8d2c02a1f3f801a22842d3b6500092193813669bf6a4d1b02eb006e799e73f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.40.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df67cb58c60f4d81b8d6311c91a273a86d66dd956b7b2971ff8c0548df0002ea"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
