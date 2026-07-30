class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.20.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f5c8799ca98d81ce666ce35c37f5b3c37c278045746194b97c1e25987dbb50ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0a02e4f3c8b78ec0d95633cfc7f65284fbc604cccb5c3e91cecd3928b777b869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9347c79cd08a362a4ac6dd4e7c7a7b44e829d9575a8298d1663e0a3e89dbf752"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.20.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0a8cf68ebf12d8fa220ba7afa0e65d8148fda79f0621711a55fc922933131cd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
