class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0267c80874e94307b04a81953219bfb03c42043e4f833bd5f3241bc3b8f80c0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f99ce64b0d187f26335943f17d7405f8db6298b8ae3d092cd31d6f8b5fc1ecb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70b8cb3ec68b0fa929d3f55355df2c7e4b1ff6623d2c3fd7fbe2fa86a50570cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07e190556eaf89d785f3044e7c7592428ad88b6ae554a7263021b5e66bdf5efd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
