class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.19"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "163004fbc6dabf6f1d5152a307f86f3c67e0da25fa2bd5155b25141900b4f056"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0a95b95e5c2c16d78bea9566afc2914cfe4ccb299f5eab88f45c28f953f7b285"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5fb172590c28a0280051dab484865404f59dda904b593b4afd433ef11b195c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.19/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d873bafcb2b51609099d75f7ae48d697dbebfee487fd8544a4a2f35f439ab19"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
