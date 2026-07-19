class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.7/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "13c3f462946003c2247f5ad9a236fee8ccf8084a3d450f1485daf696709b9e86"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.7/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "416b99b736b65011868d59be5619bbe13de0ff573403074083b998ede9703d31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.7/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b48aabef65cbeed73378526f738abedbf19ac6781fc1658de8543e4cde8639e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.7/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fb08ba4bc9efac4b2a4d337d9c00d9c7e47a0fb20335538bf7f9237c9a6b261"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
