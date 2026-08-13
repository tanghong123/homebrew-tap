class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b29bf0599a817b4351567f35c149f5199a21b215b8046b942448e54b0cc1ea2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e868d43c55139f2d49acf421a368d904ce5f33cb229310c4e3a2609e6ff1d768"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50efde0a48318d5783b2e1db39056f594784ba39d738ff752bda608a7bb0fdc3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e8ebb58f3bbcc3a02efb839e5be3f70c7bdc2fa74259bac9329e6fe112968cd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
