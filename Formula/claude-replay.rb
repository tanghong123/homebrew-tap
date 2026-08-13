class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a6664b4f3e71d318e15bf12c337b38fd43620e89c4d67b9c0fe905ddf7ce6ab6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "89895e784fa0ba4e9d7d07f062bc5b028147cc146be2529179703d7a42feb18a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d640840b31540a2f753b76a64ea30b314db23799e8f1c781297bb7c85122750"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12674bc9550bc199ede8bac93293c7ab0b1edcb2cf3457142df535e44db6c7a9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
