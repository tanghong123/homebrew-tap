class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.16.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "88458c15fea66f33fcdbb134fc30bc2525f8f026e2d86ad763970f20ba2f89a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4cccd18f20bf868625684846be595ce11f55dc72f9732ba6aa79c9c3e5265ae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d78e6a5de3dc5a263f285e323c9193dfb595b0d0561f7ea3f9258e5f114b26ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.16.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ceaa17d1199edd828c83de7b6f1a2b4d522fcc9926f4dbe6a9bf0a584de9fe60"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
