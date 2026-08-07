class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.45.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e700c00f5bcad635e4784a6334a2c1c663ad87a02a9d6647978663e294fefd91"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bd11820b0d68a3e80a6b171928dd822eedf25b9a05b11e94685436d1ad997591"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6fe3f14682e8feaf54a90e2998ab5b8ceee6a8b24b4a0469b06436124ab1ea8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "130627f9b2f01426ab471a35a7da32fb3cfbf06c01af33ed600a6b67930fe678"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
