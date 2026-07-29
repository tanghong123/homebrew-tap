class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.0.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "25ee2b447e3ca10dd155e9ede3ecec6200811bcf2a4ea83db8f8a8127b65a542"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d4dedb0477ce6788349b30661e4377837d758bfec3aad267ca66209b53f1abcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c61fb8923641a13dd7924edd8cea4ef8a94c3461c36bbc6e858ab26a80698861"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.0.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "922a9422b81c1ee030560ea607592438c2fa1440f295a9f21963faddcf942293"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
