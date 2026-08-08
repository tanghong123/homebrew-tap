class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "18299fe2dda0bf4c934486c1362e6f8c7fcc4bc5b086312dd5b27f401e32ccb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0c565861debc7c9f311881620f1bde748b04f4686c39b0893d19eeb021f76ecc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d915b0b08b7830e5f8c9ad0b2d5aa0e0983bbcdb68e5eca598fbe2d765d57c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.7/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2e79e81b4f933f8f27593b1281d631ab2e831a258b32525f98b82a7b366cf80"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
