class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.13.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fef0b2edc60bbc850a50469051a1199a0227971de548b63f348f4a6b7ecf0c87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "89d8b046404f40d85f7760b647f42bcee1ec60be5c9988dd45541d284c25c1b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7c59f88771e105929334a137d20099f8e417c068cb6f5d9d9229ab7c6e88082"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1b68e6d2b57b24de43f660554635c6fbc950227ab79037993002f38604691f5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
