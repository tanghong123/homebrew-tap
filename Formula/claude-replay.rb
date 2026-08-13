class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f2c0784e497f35aec982bfa3af70d8482a7daa468146b9aa6e279ff143d6bfd3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1766968d02ad11eb5dfc75f5af1f147d155469150ab888fa122ed77e94002a37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "698acd4043ce586ea66eff9c8be45305477eed8eb34b099ddc9ea0ee8e7af1e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9e45f06103ba4c34abb4d02d0a43db7aa5a42c2975b1498346810e6a6059372"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
