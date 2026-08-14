class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.77.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2120001413388a7ee48021ad73d8c2df94a7b9b1380526ec43caf56e82b509d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5f50fd97b0f4c01bccda34e91e783cc0be8c0047799f1e90df9dd75f38b6627b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f301f9d6b392eb31f2bf9d47a1c33b5715079ad8872db229b26e1ec52815531"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2133eef6ddf85edcc8e9babdf44e6ce5b0fb321de605e4ee509617fbd5cc4b0"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
