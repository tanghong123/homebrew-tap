class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "669ddf8a6a80500bba910de155128a6dd952f17fb9a77da4d82dbd6b29fffa59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2645668134922184b9be2c3e29129d138c274c77d16314c6403a281b5abb8de6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0b7c2683061d7307035e42b76036518aa264c264b695f4f9094c9f7a0ed2243"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6adeb332ae4bfec9dc8dc2e75fdbdc39984274ddba5bc75a303df2fb5f8fc549"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
