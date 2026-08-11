class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "395c8809e445c341b86dbcd71fbdc2798ad0c45bebfc13d22071f809af1e4b99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1ed529d3f8cd96a688ee1107e2fa38f795fb60f13ba9d2de36dc2e4a6ef61a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e68b0e87c90b665eb27cc9e6c1903b2dfbb451ea602c418e96255560f1eb49e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d20ff56f632d74e33e54d88faa6c4cb1ec9c9d791520ded4c6bc4662a7701ba8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
