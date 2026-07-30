class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.21.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9ce8e009df8bb4ec9fddca17e00bb4dcd7336f64233a0f1d52738a2ad96580c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "67b6ea41512b99254518940a4f3161faf1ed507ac0e4cae4d29fdf2c976902e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7d48a984b204a24e049a8609a1bd97431c62f317317467f82fe0a2ee178997f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.21.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ac5b700a300eabcf345be3f994f6ec86a7cf0a5a43703275b06f5f4234841d6"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
