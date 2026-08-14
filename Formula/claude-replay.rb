class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a6446f18474a583d6252dd1463cb8c2da43abc78a7d5a0e42813678829f60081"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b5983e792111eae93451d93004ac79a886d0ef9c6aa7f2687a79c1c3ccf82fc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ede3e0947363f87c10b36a5c2787188060c8030bad7542d6da09406bebbe241a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1281a80a6337d46c1b858fc28d8555b1ce3f328856605183e72eaf97d941608"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
