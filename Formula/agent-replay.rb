class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.549.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bf9ec5faacd6d676827a089d948718a462bd2b1122a91a327371f22b7549a68f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "aa48e46e0b008a2f7acae7049a03035eb2f7f64d0db8230945aa1de2c36033cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ad338ca2d4019116ac8a1aa7fcdf310a6c3dc7fc821d2a1312b7a79c652a864"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3abbd7c27ca63304b67258db44519707b31080c9fd01e513949ef3c0bc5135a1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
