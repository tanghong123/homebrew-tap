class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.19.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "30ece926462c0c3ea5caac721b6f4b91690a7b2db5f8de14c03f99525765c470"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5f224d9dfbe172f5c6527830e0763aa23cb0579489be0d66c2764888c1178a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29f03a3fc5c653fe12c7a41e313133d619a90d638e350b0c748c4715069fb222"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8756a64b93b7d151ce589fac4693dede7fe1f7b323fb27ecea44dd22d6b649f8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
