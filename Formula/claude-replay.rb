class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3d3bcaa6cd65fc26369a7ea0859e9f8c8a0fa5340b4f9ca473e6e99c9de9c3c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4c728725cd81405ff3316d4c4cbc86ccb1b99698ba69edd779707231c6e55a7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08c20e98995a722d6522abe78ce7724affad16407b11f117098a49867fa7f327"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "263f1e5ab12d7f821b577672c3da6b0adda07cad8c96cf82c9257b1288fa1d24"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
